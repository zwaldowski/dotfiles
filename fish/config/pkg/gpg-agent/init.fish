# SYNOPSIS
#   gpg-agent daemon plugin for oh-my-fish

if type -q gpg-agent
  gpg-agent --daemon ^ /dev/null
else
  echo "Please install 'gpg-agent' first!"
end
