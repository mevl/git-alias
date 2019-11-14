# Git aliases
## check status
function gs {
    executeCommand "git status $@"
}
## log
function gl {
    executeCommand "git log $@"
}
function glp {
    executeCommand "git log --graph --date=short --pretty=format:\"%h %ad | %s%d [%an]\""
}
## checkout
function go {
    executeCommand "git checkout `processParams "$@"`"
}
## commit
function gc {
    executeCommand "git commit -c ORIG_HEAD $@"
}
## clean
function gcl {
    executeCommand "git clean $@"
}
## merge
function gm {
	executeCommand "git merge --no-ff `processParams "$@"`"
}
function gmn {
	executeCommand "git merge --no-ff --no-commit `processParams "$@"`"
}
function gmc {
	executeCommand "git merge --continue $@"
}
function gma {
	executeCommand "git merge --abort $@"
}
## pull
function gp {
	executeCommand "git pull --ff-only $@"
}
## push
function gpu {
	executeCommand "git push $@"
}
function gpuo {
	executeCommand "git push --set-upstream origin `processParams "$@"`"
}
## reset
function grs {
	executeCommand "git reset --soft $@ @~"
}
function grh {
	executeCommand "git reset --hard $@ @~"
}

##################################
# below is internal usage only

#execute command 
function executeCommand() {
    echo -e "\e[1;36m> $1\e[0m"
	eval $1
}

#parse branch name function
function processParams() {
	if [ -n "$2" ]
	then
		params="${@:1:$(($#-1))} "
		branch="${!#}"
	else
		params=""
		branch="$@"
	fi	

	case ${branch::2} in
		in)
			echo "${params}integration"	
			;;
		hf)
			echo "${params}hotfix"	
			;;	
        i?)
            echo "${params}issue_${branch:1}"	
			;;		
	    c?)
			echo "${params}issue_CENTER-${branch:1}"	
			;;
		*)
            echo "${params}$branch"
			;;
	esac		
}
