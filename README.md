docker-node-hello
====================
Ubuntu version of [Dockerizing a Node.js web application - Docker Documentation](https://docs.docker.com/examples/nodejs_web_app/)

```
git clone https://github.com/yaeda/docker-node-hello.git
docker build -t <your name>/ubuntu-node-hello .
docker run -p 49160:8080 -d <your name>/ubuntu-node-hello
```

Port forwarding (MacOS)
--------------------
[Port forwarding when using boot2docker on OSX · Issue #4007 · docker/docker](https://github.com/docker/docker/issues/4007)
```
boot2docker poweroff
VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port49160,tcp,,49160,,49160"
VBoxManage modifyvm "boot2docker-vm" --natpf1 "udp-port49160,udp,,49160,,49160"
boot2docker up
```

Install docker (MacOS)
--------------------

```
brew install boot2docker
boot2docker init
boot2docker start
```
