# ~/.bashrc
# this must be appended to original ~/.bashrc file
# ...

# From http://railstips.org/blog/archives/2009/02/02/bedazzle-your-bash-prompt-with-git-info/
# I had to change 'git-symbolic-ref' to 'git symbolic-ref'
ESC="\033" # This is the escape sequence
NO_COLOR="$ESC[0m"
IRED="$ESC[1;31m" # ANSI color code for intense/bold red
IGRN="$ESC[1;32m" # ANSI color code for intense/bold green
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ""${ref#refs/heads/}" " # I wanted my branch wrapped in [], use () or <> or whatever
}

# GIT alias
gitAddCommitPushOriginMasterFunction() {
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
export PS1="[\[$IGRN\] \$(parse_git_branch)\[$NO_COLOR\]\W ]\$ "
