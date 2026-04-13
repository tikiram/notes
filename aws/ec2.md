
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

## AWS CLI

```bash
sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

> https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions

## GitHub self-hosted runner

### Create User first

```bash
sudo useradd -m github-runner-user
sudo usermod -aG sudo github-runner-user
sudo visudo
```

```
github-runner-user ALL=(ALL) NOPASSWD: ALL
```

```bash
sudo su - github-runner-user
```

* Install agent

- aws ubuntu arm image = ARM64 

> https://github.com/equanimousoft/marketing-cms/settings/actions/runners/new?arch=arm64&os=linux

- Labels are used within the workflow file `runs-on: self-hosted`

* Set as service

> https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/configure-the-application


```
sudo ./svc.sh install
sudo ./svc.sh start
```

* reduce sudo

```bash
sudo visudo
# Allow the runner to only restart the specific app and check status
# github-runner ALL=(ALL) NOPASSWD: /usr/bin/systemctl restart my-app, /usr/bin/systemctl status my-app
github-runner ALL=(ALL) NOPASSWD: /usr/bin/systemctl restart my-app, /usr/bin/docker pull my-image:latest, /usr/bin/rm -rf /var/www/html/old_build
```

#### Utils

```
systemctl status actions.runner.equanimousoft-marketing-cms.my_ec2_runner.service
```

#### Tips

* Always use absolute paths: Use `/usr/bin/systemctl` instead of just `systemctl`. You can find the path for any command by typing `which command_name` in your terminal.

* Order matters: Sudoers files are read from top to bottom. If there are conflicting rules, the last one wins.

* Wildcards: You can use `*` as a wildcard (e.g., `/usr/bin/systemctl restart *`), but be careful—this would allow the runner to restart any service on your machine, including the firewall or SSH!

* Never edit the `/etc/sudoers` file with a regular text editor, always `sudo visudo` (checks for syntax errors before saving)


### Uninstall

```
# Navigate to your runner folder
cd ~/actions-runner

# Stop the service
sudo ./svc.sh stop

# Uninstall the service from the system
sudo ./svc.sh uninstall
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