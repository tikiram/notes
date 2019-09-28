

```
sudo apt install git
sudo apt install xcip # clipboard
```

# Intellij

```
sudo tar -xzf ideaIU.tar.gz -C /opt
cd /opt/ideaIU/bin
./ idea.sh
sudo chown -R $USER /opt/idea
```

### Flutter

Install flutter from Intellij

File: `.bashrc`, append to the end

```
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/Android/Sdk/tools/bin"

```

```bash
flutter upgrade
flutter doctor --android-licenses
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

sudo chown -R $USER /opt/rider
```



# Hypervisor AVD

```
sudo apt install qemu-kvm
ls -al /dev/kvm
grep kvm /etc/group
sudo adduser $USER kvm
```

> https://stackoverflow.com/questions/37300811/android-studio-dev-kvm-device-permission-denied



### KVM

```bash
sudo apt install qemu qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-manager ebtables dnsmasq gir1.2-spice-client-gtk-3.0
```

- **libvirt-bin**: Administrador de instancias kvm y instancias qemu.
- **qemu & qemu-kvm**: El backend (los servicios de virtualizacion)
- **ubuntu-vm-builder**: Linea de comandos para la construccion de maquinas virtuales.
- **bridge-utils**: Provee un puente de la red del host a la maquina virtual.
- **virt-manager**: Interfaz visual para la creación de maquinas virtuales.
- **ebtables dnsmasq gir1.2-spice-client-gtk-3.0:** Dependencias para interfaz NAT y virt-manager

```bash
sudo addgruop libvirtd
sudo adduser `id -un` libvirtd # Relogin after this
sudo virsh list --all # check 
```

```bash
# the service
sudo service libvirtd start
sudo service libvirtd restart
sudo update-rc.d libvirtd enable
```



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

## Node.js

>https://github.com/nvm-sh/nvm

```

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# this modifies ~/.bashrc
# close and reopen terminal

nvm ls-remote

# install latest LTS
nvm install 10.16.3

nvm current
```

Through `apt` (not recommended due to `sudo` issues with `npm -g install`).

```bash
# Select version repository
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# install
sudo apt-get install -y nodejs
```

## desktop recorder
```bash
sudo apt install kazam
```

## video editor
```bash
sudo apt install openshot-qt
```