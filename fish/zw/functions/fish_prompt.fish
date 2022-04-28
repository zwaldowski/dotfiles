# Reconfigure fish colors
set -g fish_color_command brcyan

function fish_prompt
  function __git_branch_name
    command git symbolic-ref --short HEAD 2>/dev/null \
      || command git describe --tags --exact-match HEAD 2>/dev/null \
      || command git rev-parse --short HEAD 2>/dev/null
  end

  function __git_changed
    ! command git diff-index --quiet HEAD 2>/dev/null \
      || count (command git ls-files --others --exclude-standard) >/dev/null
  end

  echo -sn (set_color 00AFFF) (basename (prompt_pwd))
  if string match -q -v '*.cocoapods*' $PWD && set branch_name (__git_branch_name)
    if __git_changed
      echo -sn (set_color -o yellow) "($branch_name ✗)"
    else
      echo -sn (set_color -o brgreen) "($branch_name ✓)"
    end
  end
  echo -sn (set_color normal) " "
end
