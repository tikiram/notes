# Git

##

```bash
git describe
```

## SSH

This creates a new ssh key, using the provided email as a label.

```bash
ssh-keygen -t rsa -b 4096 -C "tikiram.samaneb@gmail.com"
ssh-keygen -t rsa -b 4096 -C "tikiram@icloud.com"
```

```bash
# linux
xclip -sel clip < ~/.ssh/id_rsa.pub
xclip -sel clip < ~/.ssh/id_rsa_2.pub

# windows
clip < .ssh/id_rsa.pub
```

```bash
ssh -T git@github.com
ssh -T git@gitlab.com
```

## SSH per repository

```bash
git config core.sshCommand "ssh -i ~/.ssh/id_rsa_2"
```

## Config

```bash
git config --global user.name "Tikiram Samaneb"
git config --global user.email "tikiram.samaneb@gmail.com"
```

## Current Config

```bash
git config --list --show-origin
```

## Commands

```bash
git pull --no-edit
```

```bash
git checkout master
git merge --squash --no-edit some-feature
```

```bash
git checkout master
git pull origin feature --no-edit
```


```
git reset --hard HEAD
```

```bash
git fetch origin
git reset --hard origin/master
```



Reapply .gitignore

```bash
git rm -r --cached
git add .
git commit -m ".gitignore is now working"
```





## Adding remote origin

```bash
git remote add origin git@github.com:Tikiram/notes.git
git push -u origin master
```



### Should every git commit leave the project in a working state?

> https://softwareengineering.stackexchange.com/questions/109107/should-every-git-commit-leave-the-project-in-a-working-state/109112#109112

>I usually follow this rule:
> - Each *merge* to `master` branch **must** leave the project in a working state;
> - Each *merge* to mainline `develop` branch **should** leave the project in a working state (and it must build at least);
> - Each other *individual* commit has a primary goal of explaining why the change is made, and what is it for, and what parts of the project it affected. All other goals, such as leaving the project in a working state, are optional.

>Use your local clone of the repository for whatever makes you comfortable while developing.
>I commit broken code regularly, and when I am ready to make the code available to other developers, I use a great feature:
>```
>git rebase -i HEAD~4
>```
>This allows me to compress my intermediate (in this case 4 of them), possibly broken, commits into one good commit. You will be presented with an editor allowing you to choose how those commits are compacted. Typically I marked the first commit the 'pick' commit, and mark the others 'squash'.
>
>Then I can push that one atomic commit, or in fact what I do if my new feature is really ready, is use 'git cvsexportcommit' to get my work into the existing CVS repo.
