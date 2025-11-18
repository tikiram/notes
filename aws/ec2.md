
# EC2

* Import Key (SSH)
* Create instance
  * it automatically creates the `ubuntu` user

```bash
ssh ubuntu@<ip>
```


* Authorized SSH keys

```bash
more .ssh/authorized_keys
```

```
sudo apt update
sudo apt upgrade
```

## Postgresql

```bash
sudo apt install postgresql
```


## Swift

> for building apps consider using the docker swift image

* Install swiftly (https://www.swift.org/install/linux/)
* Install dependencies described by swiftly

```bash
ssh-keygen -t ed25519 -C "dev-arm-2-ec2"
```

* copy and paste on github
```bash
cat ~/.ssh/id_ed25519.pub
```