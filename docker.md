
# Docker

## Install

> https://docs.orbstack.dev/quick-start

```bash
brew install orbstack
```

* open orbstack app

## Resources

> https://docs.docker.com/build/cache/optimize/

## Commands

```bash
docker build -t my_builder -f BuildDockerfile .
```


```bash
docker build -t tag .
docker images

docker run -d -p 5000:5000 p01_image
```

```bash
docker ps
docker ps -a # all containers, including failed
```

```bash
docker logs [id]
```

```bash 
docker cp <container_id>:/path/to/useful/file /local-path
```

Get into a container
```bash
docker exec -it <mycontainer> bash
```