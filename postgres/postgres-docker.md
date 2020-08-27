
# Postgres-Docker

> https://hackernoon.com/dont-install-postgres-docker-pull-postgres-bee20e200198
> https://hub.docker.com/_/postgres?tab=description


```bash
sudo docker pull postgres:12.4
```

```bash
mkdir -p $HOME/docker/volumes/postgres
```

```bash
sudo docker run --rm --name postgres-container -e POSTGRES_PASSWORD=admin -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres:12.4
```

## Connect

```bash
psql -h localhost -U postgres -d postgres
```