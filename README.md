## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-java-ssl/blob/main/Dockerfile">latest</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-java-ssl/issues">https://github.com/ngacareer/alpine-java-ssl/issues</a>

## What is alpine-java-ssl ? 

The image is a Linux lightweight, It has been integrated openssl and jdk, image run <a href="https://github.com/Yelp/dumb-init">dumb-init</a> as PID 1 which forwards signals to all processes running in the container. we can use openssl and base running java application.

Image supports version of Java : 7, 8, 9, 10, 11 (lastest)

## How to use this image
- On Docker 
```
docker run -itd --name alpine-java-ssl ngacareer/alpine-java-ssl
docker exec -it alpine-java-ssl bin/sh
# ping ngacareer.com
# curl https://ngacareer.com
 ```
- On Kubernetes
 ```
kubectl run alpine-java-ssl --image=ngacareer/alpine-java-ssl
kubectl exec -it alpine-java-ssl bin/sh
#ping ngacareer.com
#curl https://ngacareer
 ```
 - On OpenShift
 ```
oc run alpine-java-ssl --image=ngacareer/alpine-java-ssl
oc exec alpine-java-ssl  -i -t /bin/sh
#ping ngacareer.com
#curl https://ngacareer.com
 ```
