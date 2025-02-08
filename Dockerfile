# Use Node.js image from the Docker Hub
FROM node:14

# Set working directory in the container 
WORKDIR /usr/src/app

# Copy all package___.json into the container
COPY package*.json ./

# Install application dependencies 
RUN npm install 

# Copy the rest of the application source to the container 
COPY . .

# Expose the port the application will run on
EXPOSE 3000

# Define the command to run the application 
CMD ["node", "app.js"]