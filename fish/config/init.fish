set -x EDITOR "subl -n -w"
set -x GIT_EDITOR "subl -n -w"

function ql
    qlmanage -p $argv >& /dev/null
end

function p
    cd ~/Documents/Projects/$1
end

function w
    cd ~/Documents/Work/$1
end
