# macOS

## Init

+ spotify
+ sublime text
+ adblock for safari

## Brew (?)

+ https://brew.sh
  - installs xcode line commands (includes git)

## Git Setup

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```bash
ssh-keygen -t ed25519 -C "tikiram.ruiz@gmail.com"

cat ~/.ssh/id_ed25519.pub | pbcopy
```

> add key to github

```bash
ssh -T git@github.com
```

```bash
git config --global user.name "Tikiram Ruiz"
git config --global user.email "tikiram.ruiz@gmail.com"
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
* Install [Jetbrains Font](https://www.jetbrains.com/lp/mono/) (Necessary for `agnoster`)
* Change all profiles to Jetbrains Mono

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

### Extra info

* (optional) - Powerline fonts

```bash
cd ~/Repositories
git clone git@github.com:powerline/fonts.git
cd fonts
./install.sh
```

> https://apple.stackexchange.com/questions/352354/how-to-change-font-size-and-font-for-all-profiles-in-terminal



---

## nvm

https://github.com/nvm-sh/nvm

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
```

```bash
nvm list available
nvm install 14.17.6
nvm use 14.17.6
```

## Android

https://stackoverflow.com/questions/56553879/android-studio-cause-error-86-bad-cpu-type-in-executable

softwareupdate --install-rosetta

> https://stackoverflow.com/questions/64907154/android-studio-emulator-on-macos-with-arm-cpu-m1

```
export PATH="/Users/$USER/Library/Android/sdk/platform-tools":$PATH
```

> https://stackoverflow.com/questions/7609270/not-able-to-access-adb-in-os-x-through-terminal-command-not-found/65538729#65538729
