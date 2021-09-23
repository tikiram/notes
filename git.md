# Git



## Select theirs changes on merge conflict
```
git checkout --theirs path/to/file
```

> https://stackoverflow.com/questions/10697463/resolve-git-merge-conflicts-in-favor-of-their-changes-during-a-pull

## Git diff to file

git diff --color > foo.txt
git diff > 20150203_someChanges.diff

> https://stackoverflow.com/questions/9706492/git-diff-output-to-file-preserve-coloring


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