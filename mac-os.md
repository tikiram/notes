# macOS



## Init

+ spotify
+ sublime text
+ chrome

## Git

```bash
git --version
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

## Oh my Zsh 

* [GitHub](https://github.com/ohmyzsh/ohmyzsh)
* Install

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
* Select Theme

```bash
open -a TextEdit ~/.zshrc
```

> `ZSH_THEME="agnoster"`

* Customize theme

```bash
open -a TextEdit ~/.oh-my-zsh/themes/agnoster.zsh-theme
```
> `# prompt_context`

* Install [Terminal Themes](https://github.com/lysyi3m/macos-terminal-themes)
    + ayuLight
* Install [Jetbrains Font](https://www.jetbrains.com/lp/mono/) (Necessary for `agnoster`)

* Change all profiles to Jetbrains Mono (Apple Script)

```
tell application "Terminal"
    set ProfilesNames to name of every settings set
    repeat with ProfileName in ProfilesNames
        set font name of settings set ProfileName to "JetBrainsMono-Regular"
        set font size of settings set ProfileName to 14
    end repeat
end tell
```

### Commands

```bash
omz

omz version

omz update
```


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

## Android

https://stackoverflow.com/questions/56553879/android-studio-cause-error-86-bad-cpu-type-in-executable

softwareupdate --install-rosetta

> https://stackoverflow.com/questions/64907154/android-studio-emulator-on-macos-with-arm-cpu-m1

```
export PATH="/Users/$USER/Library/Android/sdk/platform-tools":$PATH
```

> https://stackoverflow.com/questions/7609270/not-able-to-access-adb-in-os-x-through-terminal-command-not-found/65538729#65538729

## Postgresql

```bash
brew install postgresql
brew services start postgresql
```


```bash
docker run --name postgresql -e POSTGRES_USER=asdf1234 -e POSTGRES_PASSWORD=asdf1234 -p 5432:5432 -d postgres
```

## Utils


+ https://github.com/MonitorControl/MonitorControl
+ https://github.com/waydabber/BetterDisplay
    - https://www.reddit.com/r/MacOS/comments/113brtc/tip_for_if_youre_using_3440x1440_displays_with/

+ https://www.keka.io/es/