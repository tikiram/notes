# Windows

## Git


```bash
ssh-keygen -t rsa -b 4096 -C "tikiram.samaneb@gmail.com"
clip < .ssh/id_rsa.pub
```

> Copy on github

```bash
ssh -T git@github.com
```

```bash
git config --global user.name "Tikiram Samaneb"
git config --global user.email "tikiram.samaneb@gmail.com"
```

### Git Bash Config

`C:\Program Files\Git\etc\profile.d\git-prompt.sh`

```
	PS1='\[\033]0;\W\007\]'        # set window title
	PS1="$PS1"'\[\033[32m\]'       # change to green
	PS1="$PS1"'\w'                 # current working directory
	PS1="$PS1"'\[\033[0m\]'        # change color
	PS1="$PS1"' '                  #
```

> https://stackoverflow.com/questions/48012838/hide-username-and-computer-name-from-git-bash-for-windows-10/51539675
> https://stackoverflow.com/questions/6697753/difference-between-single-and-double-quotes-in-bash

## Node

> https://github.com/coreybutler/nvm-windows

```bash
nvm list available
nvm install 14.17.6
nvm use 14.17.6
```
