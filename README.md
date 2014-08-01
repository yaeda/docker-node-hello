[Dockerizing a Node.js web application - Docker Documentation](https://docs.docker.com/examples/nodejs_web_app/)

```
git clone https://github.com/yaeda/docker-node-hello.git
docker build -t <your name>/ubuntu-node-hello .
docker run -p 49160:8080 -d <your name>/ubuntu-node-hello
```

Install docker
--------------------

```
brew install boot2docker
boot2docker init
boot2docker start
```
