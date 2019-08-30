

```
sudo apt install git
sudo apt install xcip # clipboard
```

# Intellij

```
sudo tar -xzf ideaIU.tar.gz -C /opt
cd /opt/ideaIU/bin
./ idea.sh
```



#  Rider + .Net

> https://www.mono-project.com/download/stable/#download-lin-ubuntu

```bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update


sudo apt install mono-complete
```

```bash
sudo tar -xzf JetbrainsRider.tar.gz -C /opt
cd /opt/JetbrainsRider/bin
./ rider.sh
```



# Hypervisor AVD

```
sudo apt install qemu-kvm
ls -al /dev/kvm
grep kvm /etc/group
sudo adduser $USER kvm
```

> https://stackoverflow.com/questions/37300811/android-studio-dev-kvm-device-permission-denied

# QBitTorrent

```bash
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt-get update
sudo apt-get install -y qbittorrent
```

# Telegram

```bash
sudo add-apt-repository ppa:atareao/telegram
sduo apt-get update
sudo apt-get install telegram
```

## DBeaver

```bash
sudo add-apt-repository ppa:serge-rider/dbeaver-ce
sudo apt-get update
sudo apt-get install dbeaver-ce
```

## Node.js v12

```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```

