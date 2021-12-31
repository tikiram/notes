# Manjaro

## Init

```
pacman -S --needed git base-devel
```

```bash
mkdir public_repos
cd public_repos
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
```

```bash
yay -S spotify

yay -S sublime-text-4
```

## Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

subl .zshrc
```

> ZSH_THEME="agnoster"

```
subl ~/.oh-my-zsh/themes/agnoster.zsh-theme
````

> #prompt_context

```
source .zshrc
```

## Webstorm

```bash
sudo tar -xzf webstorm.tar.gz -C /opt
sudo chown -R $USER /opt/webstorm
cd /opt/webstorm/bin
./ webstorm.sh
```
Create desktop entry from app 

## GitHub Setup

```bash
sudo pacman -S xclip

ssh-keygen -t rsa -b 4096 -C "tikiram.samaneb@gmail.com"

xclip -sel clip < ~/.ssh/id_rsa.pub
```

> add key on GitHub

```bash
ssh -T git@github.com
```

```bash
git config --global user.name "Tikiram Samaneb"
git config --global user.email "tikiram.samaneb@gmail.com"
```

## Node

> https://github.com/nvm-sh/nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```
Copy .bashrc data to .zshrc and reload zsh

```
nvm ls-remote

# install latest LTS
nvm install 12.18.3

nvm current
```

