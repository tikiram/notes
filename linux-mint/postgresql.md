# Postgres

## Install

```bash
sudo apt update
sudo apt install postgresql
```

## Check version

```bash
sudo -u postgres psql -c "SELECT version();"

```

## Login

```bash
sudo su - postgres
psql

# \q to exit
```



## Create database and role

```bash
sudo su - postgres -c "createdb tikiram"
```

```bash
sudo su - postgres -c "createuser tikiram"
```

```bash
sudo -u postgres psql
grant all privileges on database tikiram to tikiram;
```

From the user `tikiram`  we can know psql

```
psql
```

