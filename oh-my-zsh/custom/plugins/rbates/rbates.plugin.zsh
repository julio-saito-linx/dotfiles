c() { cd ~/_git/$1; }
_c() { _files -W ~/_git -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
