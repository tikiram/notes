

# Manjaro

## Yay install

```bash
sudo pacman -S --needed git base-devel

cd public_repos
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```


```bash
yay -S spotify
```


```bash
sudo pacman -S xclip
```


## Docker Install

> https://linuxconfig.org/manjaro-linux-docker-installation#h1-install-docker

```bash
sudo pacman -Syu
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
```

Docker without sudo, restart required
```bash
sudo usermod -aG docker $USER
```

```bash
sudo pacman -S docker-compose
```

## Oh My Zsh

```bash
sudo pacman -Syu zsh
```

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```bash
subl3 .zshrc
```

```
ZSH_THEME="agnoster"
```

```bash
subl3 ~/.oh-my-zsh/themes/agnoster.zsh-theme
```

```
  # prompt_context
```

```bash
subl3 ~/.bashrc
```
Copy PATH updates to `.zshrc`

```bash
source ~/.zshrc
```