

## Example

```bash
sudo docker build -t tikiram/products-api .
```

```bash
sudo docker run --name products-api-container -p 3001:3000 -d tikiram/products-api
```

```bash
sudo docker ps
```

```bash
docker logs products-api-container
```

```bash
sudo docker stop products-api-container
```

## Stop and Remove all containers

```bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```

```bash
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
```

## Commands

Run command will create the container using the image we specified

```bash
docker run <repository>:<tag> <command> [arguments]
```


```bash
docker run busybox:1.24 echo "hello world"
docker run busybox:1.24 ls /
```

```
docker images
```


* `-i` starts an interactive container
* `-t` creates a pseudo-TTY that attaches stdin and stdout


```
sudo docker run -i -t busybox:1.24
```

modes:
* foreground
* detached: `-d`

With `-d` we get the container's long id

```
sudo docker run -d busybox:1.24 sleep 1000
```

```
sudo docker ps
```

```bash
sudo docker ps -a
```

`--rm` removes container when done

```bash
sudo docker run --rm busybox:1.24 sleep 1
```

`--name` specifies the container's name

```bash
sudo docker run --name something busybox:1.24
```

Inspect shows information such as ip

```bash
sudo docker inspect <container_id>
```

---

Port mapping

```
sudo docker run -it -p 8888:8888 some_server:latest 
```

```
sudo docker logs <container_id>
```

## Layers

```bash
sudo docker history <image>
```

```
docker commit <container_id> <repository>:<tag>
```

## Dockerfile

Text document that contains all the instructions to assemble an image. 

```bash
touch Dockerfile
```

```
FROM debian:latest
```

`RUN`: any command that can be run in a linux terminal

```
RUN apt-get update
RUN apt-get install -y git
```

```
docker build -t <repository> <path>
```

Automatically adds `latest` tag
```
docker build -t tikiram/debian .
```

Chain RUN instructions

+ each Run command will create a container and write on the top writable layer, then commit the container as a new image.

+ The new image is used for the next step in the Dockerfile. So each RUN instruction will create a new image layer.

+ It is recommended to chain the RUN instruccions in the Dockerfile to reduce the number of image layers it creates.

## CMD Instructions

* Specifies what command you want to run when the container starts up.

* If we don't specify CMD instructions in the Dockerfile, Docker will use the default command defined in the base image.

* You can specify the command in either exec form which is preferred or in shell form.

```
CMD ["echo", "hello world"]
```

This can be overwriten
```
docker run <image> echo "something else"
```

## Copy

```
FROM debian:jessie
RUN apt-get update && apt-get install -y git
COPY abc.txt /src/abc.txt
```

`ADD` Allow you to download a file from internet, also automatically uncompress files.

## Registry



docker login registry.gitlab.com

docker tag backend $CI_REGISTRY/usac-ads2/ads2-practica-01:backend$version
docker push $CI_REGISTRY/usac-ads2/ads2-practica-01:backend$version

docker pull registry.gitlab.com/usac-ads2/ads2-practica-01:products-api-imagev01.02.00


## Exec

```
docker exec -it <container_id> <command>
```