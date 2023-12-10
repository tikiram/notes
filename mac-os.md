# macOS

+ Mouse: Enable right-click 
+ External Keyboard: switch modifier keys
+ Install git: `git —version`
+ Install Brew: https://brew.sh
+ Install BetterDisplay: `brew install --cask betterdisplay`
+ Jetbrains Mono: 
> https://github.com/JetBrains/JetBrainsMono
```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
```

+ Install Sublime: 
`brew install --cask sublime-text`

```json
{
    "font_face": "Jetbrains Mono",
    "font_size": 14,
    "color_scheme": "Sixteen.sublime-color-scheme"
}
```
* WriterSide `brew install --cask writerside`

* Postgresql

```bash
brew install postgresql
brew services start postgresql
```

* Spotify

```bash
brew install --cask spotify
```

## Oh my Zsh

* [GitHub](https://github.com/ohmyzsh/ohmyzsh)
* Install

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```bash
# Set theme:
perl -p -w -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g;' ~/.zshrc | grep 'ZSH_THEME="agnoster"'
perl -pi -w -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g;' ~/.zshrc

# Customize theme:
perl -p -w -e 's/  prompt_context/  #prompt_context/g;' ~/.oh-my-zsh/themes/agnoster.zsh-theme | grep 'prompt_context'
perl -pi -w -e 's/  prompt_context/  #prompt_context/g;' ~/.oh-my-zsh/themes/agnoster.zsh-theme
```

* Install color schema
```bash
TEMPFILE=$(mktemp /tmp/ayu.terminal)
curl https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/themes/ayu%20Light.terminal -o $TEMPFILE
open -a Terminal $TEMPFILE
```

* Set jetbrains font as default on all terminal profiles

```bash
echo 'tell application "Terminal"
    set ProfilesNames to name of every settings set
    repeat with ProfileName in ProfilesNames
        set font name of settings set ProfileName to "JetBrainsMono-Regular"
        set font size of settings set ProfileName to 14
    end repeat
end tell' | osascript
```

* Set profile as default
* Terminal: Set windows-size
* Terminal: Set Close if the shell exited cleanly

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

---

## Dock:
+ Minimize windows into application icon: on
+ Show suggested and recent apps in Dock: off
+ Use iPhone widgets: off

## Safari:

* General
  + Safari open with: All non-private windows from last session
* Advanced
  + Smart Search Field: Show full website address
* View:
  + Show tab bar
  + Show favorites bar
  + Show status bar

---


## nvm

https://github.com/nvm-sh/nvm

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
```

```bash
nvm ls-remote
nvm install 14.17.6
nvm use 14.17.6
```
```bash
nvm install --lts
```

## Utils


+ https://github.com/MonitorControl/MonitorControl
+ https://github.com/waydabber/BetterDisplay
    - https://www.reddit.com/r/MacOS/comments/113brtc/tip_for_if_youre_using_3440x1440_displays_with/

+ https://www.keka.io/es/

## Docs

https://unix.stackexchange.com/questions/112023/how-can-i-replace-a-string-in-a-files