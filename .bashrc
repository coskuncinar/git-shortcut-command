#!/bin/bash

createpush(){
#	whos=$(whoami)
#	echo "Welcome $whos" 
	echo -n "Enter url : "
	read myUrl
	echo -n "Enter commit : "
	read myCommit
	$myUrl=`echo $myUrl | sed 's/ *$//g'`
	$myCommit=`echo $myCommit | sed 's/ *$//g'`
	
	if [ ! -f README.md ]; then
		echo "File not found!"
		echo "# Readme" >> README.md
	fi	
	git init
	git add .
	git commit -m "$myCommit"
	git branch -M main
	git remote add origin "$myUrl"
	git push -u origin main
}

existspush(){
	echo -n "Enter Url: "
	read myUrl
	git remote add origin "$myUrl"
	git branch -M main
	git push -u origin main
}



alias gcp="createpush"
alias gep="existspush"
alias gs="git status"
alias gph="git push"
alias gpl="git pull"
