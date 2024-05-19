
# Docker


```bash
docker build -t myimage .
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