gitAddCommitPushOriginMasterFunction() {
  NO_COLOR="$\e[0m"
  IRED="$\e[1;31m"
  IGRN="$\e[1;32m"

  if [ "$1" != "" ]; then
    # add all files
    echo -e $IGRN :: git add . -A$NO_COLOR
    git add . -A

    # commit with comment
    echo -e $IGRN :: git commit -m\'"$@"\'$NO_COLOR
    git commit -m "$*"

    # push to "origin master"
    echo -e $IGRN :: git push $NO_COLOR
    git push

  else

    echo -e ......................................
    echo -e $NO_COLOR git helper alias \(add, commit, push\)
    echo -e ......................................
    echo -e $IRED ERROR: Missing comment
    echo -e $IGRN usage: gc this is my comment$NO_COLOR
    echo -e ......................................

  fi
}

alias gc=gitAddCommitPushOriginMasterFunction
alias gs='git status -sb'

