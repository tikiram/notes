

```bash
docker-compose up
docker-compose down
docker-compose build
```



```yml
version: '3'
services:
  practica-postgres:
    image: "postgres:12.4"
    container_name: postgres-container
    volumes:
      - $HOME/docker/volumes/postgres:/var/lib/postgresql/data
    ports:
      - 5432:5432
    environment:
      POSTGRES_PASSWORD: "admin"
      POSTGRES_DB: "practica1"
      POSTGRES_USER: "practica1"
  products-api:
    build: ./products-api
    container_name: products-api-container
    ports:
    - 3001:3000
    links:
      - practica-postgres

```