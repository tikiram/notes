# macOS

## Setup

+ Mouse: Enable right-click
+ External Keyboard: switch modifier keys


+ Install git: git —version
+ Install Brew: https://brew.sh
  * Add brew to PATH (commands provided by installation)
  * `brew analytics off`

```bash
brew install --cask sublime-text
brew install --cask fleet
brew install --cask google-chrome
```

```bash
brew install --cask spotify
brew install --cask whatsapp
brew install --cask vlc
brew install --cask qbittorrent
brew install --cask visual-studio-code
```

```bash
brew install --cask firefox
brew install --cask brave-browser
brew install --cask betterdisplay
```

```bash
brew install --cask pycharm
brew install --cask webstorm
brew install --cask datagrip
brew install --cask intellij-idea
```

### Git Setup

> https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```bash
ssh-keygen -t ed25519 -C "tikiram@icloud.com"
```
```bash
cat ~/.ssh/id_ed25519.pub | pbcopy
```

> add key to github

```bash
ssh -T git@github.com
```

```bash
git config --global user.name "Tikiram Ruiz"
git config --global user.email "tikiram@icloud.com"
```

```bash
git config --global pull.rebase true
```

### powerlevel10k

JetBrainsMno Nerd Font
https://www.nerdfonts.com/font-downloads

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

* Set font on terminal
* Install powerlevel10k https://github.com/romkatv/powerlevel10k
* shell > close if the shell exited cleanly

### Add `zsh` to .zshrc

```bash
source ~/Repositories/notes/tikiram.zsh
```

### Dock

+ Minimize windows into application icon: on
+ Show suggested and recent apps in Dock: off
+ Use iPhone widgets: off

### Safari

+ General
    - Safari open with: All non-private windows from last session
+ Advanced
    - Smart Search Field: Show full website address
+ View:
    - Show tab bar
    - Show favorites bar
    - Show status bar

### Mail

* edit favorites
* view - show favorites bar
* view - show contact photo
* view - Higlight conversations
* view - customize toolbar
  - Icon and Text

---

---


## Upgrade cask

```bash
brew upgrade --cask qbittorrent
```

## Postgres

```bash
brew install postgresql@15

brew services start postgresql@15
brew services stop postgresql@15
```

```sql
CREATE USER postgres SUPERUSER;
```

```
brew uninstall postgresql@14
```

## Node

```bash
brew install nvm # follow extra instructions by brew after install
nvm install --lts
```

## 7Zip

```bash
brew install sevenzip
7zz --help
```

```bash
7zz x <filename> -p<password>
```

```bash
7zz x fo.7z -p1234
7zz x asdf.7z -pm0simPX5#5s$
```

## Utils

```bash
swift --version
```

```bash
brew list
```

> mongo installs node

```bash
brew uses --installed node
```

```bash
brew list --cask
```

```bash
brew outdated
brew outdated --cask
```

```bash
p10k configure
```

## Others

### Check DNS servers

```bash
scutil --dns
scutil --dns | grep 'nameserver\[[0-9]*\]'
```

Claro Movil: `172.20.10.1`


### Adding new entry to PATH

```bash
path+=/some/new/bin/dir
```

## TODO

- Maybe a script installing all of this?

## UUID

```bash
uuidgen
```

## MD5

```bash
echo "tensai-prod" | md5
```