const http = require('http')

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Contnet-Type': 'text/plain' });
    res.end('Hello, Docker World \n');
});

const port = process.env.PORT || 3000;
server.listen(port, () => {
    console.log(`server running on http://localhost:${port}`)
});