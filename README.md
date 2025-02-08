# My Docker App
> **Objective:** The purpose of this small project is to get a hands on exprience with docker and learn the basics. Plus this my first docker project! 😊🙌🏾🎉

## Creating an `app.js`
Created a basic Node.js application that sets up a web server that responds with "Hello, Docker World!"

## Creating a Dockerfile
> **Note:** Docker is a script that defines the instructions to build a Docker image. 

Sets upa a Node.js environment in a container, copies application code and dependencies and specifies how to run the application

## Build a Docker Image
> **Note:** I'm running this code on Linux terminal. More specifically WSL.

```sh
sudo docker build -t my-docker-app .
```
## Final Output! 
![built docker image](/img/built_docker_image.jpg)

![Running docker container](/img/running_docker_container.jpg)

## Run Docker Container
```sh
sudo docker run -p 3000:3000 my-docker-app
```

## Troubleshoot
> **Error:** Got permission denied issue

After building the Docker Image, run the following code.
```sh
sudo usermod -aG docker username
```

> **Error:** docker: driver failed programming external connectivity on endpoint webserver

```sh
service docker restart
```
Then run the Docker container. 