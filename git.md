# Git



## Select theirs changes on merge conflict
```
git checkout --theirs path/to/file
```

> https://stackoverflow.com/questions/10697463/resolve-git-merge-conflicts-in-favor-of-their-changes-during-a-pull


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