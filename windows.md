# Windows

## Git


```bash
ssh-keygen -t rsa -b 4096 -C "tikiram.samaneb@gmail.com"
clip < .ssh/id_rsa.pub
```

> Copy on github

```bash
ssh -T git@github.com
```

```bash
git config --global user.name "Tikiram Samaneb"
git config --global user.email "tikiram.samaneb@gmail.com"
```

## Node

> https://github.com/coreybutler/nvm-windows

```bash
nvm list available
nvm install 14.17.6
nvm use 14.17.6
```
