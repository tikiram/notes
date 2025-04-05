# Git



## Select theirs changes on merge conflict
```
git checkout --theirs path/to/file
```

> https://stackoverflow.com/questions/10697463/resolve-git-merge-conflicts-in-favor-of-their-changes-during-a-pull

## Git diff to file

```
git diff --color > foo.txt
```
```
git diff > 20150203_someChanges.diff
```

> https://stackoverflow.com/questions/9706492/git-diff-output-to-file-preserve-coloring
> https://stackoverflow.com/questions/2013091/coloured-git-diff-to-html?noredirect=1&lq=1


## most recent common ancestor of two branches

git merge-base branch2 branch3

> https://stackoverflow.com/questions/1549146/git-find-the-most-recent-common-ancestor-of-two-branches


## Branches: Commit differences
```
git log --oneline mybranch ^master
```

```
git log --oneline mybranch ^master | wc -l
```

> https://stackoverflow.com/questions/26413617/how-can-i-count-number-of-commits-between-two-branches

## Branches: differences

```
git diff branch_1..branch_2

git diff branch_1...branch_2
```

```
git diff --name-only branch_1...branch_2
```

# Two accounts

```
# Personal account, - the default config
Host github.com
   HostName github.com
   User git
   IdentityFile ~/.ssh/id_rsa
   
# Work account-1
Host github.com-company 
   HostName github.com
   User git
   IdentityFile ~/.ssh/id_rsa_company
```

Optional ?
```
ssh-add ~/.ssh/id_rsa_doe_company
```

```
ssh -T git@github.com
ssh -T git@github.com-company
```

## Remote


```bash
git remove -v
git remove show origin

git remote set-url origin NEW_URL

git remote set-url origin git@github.com:tikiram/identity-provider.git

git remote set-url origin git@github.com:tikiram/shared-ui-ts.git

git remote set-url origin git@github.com:tikiram/shared-be-swift.git

```



