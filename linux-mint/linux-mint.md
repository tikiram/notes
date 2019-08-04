

```
sudo apt install git
sudo apt install xcip
```

# Intellij

```
sudo tar -xzf ideaIU.tar.gz -C /opt
cd /opt/ideaIU/bin
./ idea.sh
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
