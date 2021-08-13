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