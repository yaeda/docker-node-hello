docker-node-hello
====================
Ubuntu version of [Dockerizing a Node.js web application - Docker Documentation](https://docs.docker.com/examples/nodejs_web_app/)
```
git clone https://github.com/yaeda/docker-node-hello.git
docker build -t <your name>/ubuntu-node-hello .
docker run -p 49160:8080 -d <your name>/ubuntu-node-hello
```

and access to [localhost:49160](http://localhost:49160)

Port Forwarding (MacOS)
--------------------
[Port forwarding when using boot2docker on OSX · Issue #4007 · docker/docker](https://github.com/docker/docker/issues/4007)
```
boot2docker poweroff
VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port49160,tcp,,49160,,49160"
VBoxManage modifyvm "boot2docker-vm" --natpf1 "udp-port49160,udp,,49160,,49160"
boot2docker up
```


Proxy Setting (MacOS)
--------------------
[proxy - Docker/Boot2Docker: Set http/https proxies for docker on osx - Stack Overflow](http://stackoverflow.com/questions/24489265/docker-boot2docker-set-http-https-proxies-for-docker-on-osx)
```
boot2docker ssh

# add proxy setting in the virtual machine
sudo vi /var/lib/boot2docker/profile
exit

boot2docker restart
```

/var/lib/boot2docker/profile
```
export HTTP_PROXY=http://<IP>:<PORT>
export HTTPS_PROXY=http://<IP>:<PORT>
```

Nameserver Setting (MacOS)
--------------------
[boot2docker 0.8.1 on OS X: container DNS stuck on 8.8.8.8, 8.8.4.4 · Issue #357 · boot2docker/boot2docker](https://github.com/boot2docker/boot2docker/issues/357)

In current version, boot2docker runs the docker daemon before it pulls the DNS from the host.
Threfore you need to update it manually.
```
$ sudo udhcpc   # refresh the DHCP
$ sudo /etc/init.d/docker restart # restart the service
```

`udhcpc` sometimes doesn't reflect host settings. In that case, edit `/etc/resolve.conf`.


Install docker (MacOS)
--------------------

```
brew install boot2docker
boot2docker init
boot2docker start
export DOCKER_HOST=tcp://<IP>:<PORT>
```
