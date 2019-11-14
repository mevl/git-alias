# git alias

### git command aliases for bash (b2b-center version)

#### Install
Just copy .bashrc file content to same file in your existing home directory

#### Usage

##### git status
- gs \[params\] `git status [params]`

##### git log
- gl \[params\] `git log --graph --date=short --pretty=format:"%h %ad | %s%d [%an]"`
- glp `git status [params]`

##### git checkout
- go \[params\] branchName `git checkout [params] branchName`
> In branchName aliases is allowed:
> - in \- integration
> - hf \- hotfix
> - i \- issue\_ prefix
> - c \- issue\_CENTER\- prefix
>
> Examples:
> - go \[params\] in `git checkout [params] integration`
> - go \[params\] hf `git checkout [params] hotfix`
> - go \[params\] i5678 `git checkout [params] issue_5678`
> - go \[params\] iTODO-9876 `git checkout [params] issue_TODO-9876`
> - go \[params\] c12345 `git checkout [params] issue_CENTER-12345`
> - go \[params\] cfix432 `git checkout [params] issue_CENTER-fix432`

##### git commit
- gc \[params\] `git commit -c ORIG_HEAD [params]`

##### git clean
- gcl \[params\] `git clean [params]`

##### git merge
- gm \[params\] branchName `git merge --no-ff [params] branchName`
- gmn \[params\] branchName `git merge --no-ff --no-commit [params] branchName`
- gmc \[params\] `git merge --continue [params]`
- gma \[params\] `git merge --abort [params]`
> In branchName aliases is allowed (see git checkout section)

##### git pull
- gp \[params\] `git pull [params]`

##### git push
- gpu \[params\] `git push [params]`  
- gpuo \[params\] branchName `git push --set-upstream origin [params] branchName`  
> In branchName aliases is allowed (see git checkout section)

##### git reset
- grs \[params\] `git reset --soft [params] @~`
- grh \[params\] `git reset --hard [params] @~`