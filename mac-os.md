# macOS


+ Mouse: Enable right-click
+ External Keyboard: switch modifier keys
+ Install git: git —version
+ Install Brew: https://brew.sh

```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
```

```bash
brew install --cask sublime-text
```

```bash
brew install postgresql
brew services start postgresql
```

```bash
brew install --cask spotify
```

## Git Setup

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```bash
ssh-keygen -t ed25519 -C "tikiram@icloud.com"

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

## powerlevel10k

JetBrainsMno Nerd Font
https://www.nerdfonts.com/font-downloads

https://github.com/romkatv/powerlevel10k

Powerlevel10k

## Dock

+ Minimize windows into application icon: on
+ Show suggested and recent apps in Dock: off
+ Use iPhone widgets: off

## Safari

+ General
    - Safari open with: All non-private windows from last session
+ Advanced
    - Smart Search Field: Show full website address
+ View:
    - Show tab bar
    - Show favorites bar
    - Show status bar

## Utils

```bash
swift --version
```

```bash
brew list
```

```bash
brew list --cask
```

```bash
p10k configure
```

