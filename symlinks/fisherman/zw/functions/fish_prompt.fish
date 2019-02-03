# Reconfigure fish colors
set -g fish_color_command cyan

function fish_prompt
  echo -sn (set_color $fish_color_cwd) (basename (prompt_pwd))
  if string match -q -v '*.cocoapods*' $PWD && set -l branch_name (git_branch_name)
    if git_is_touched
      echo -sn (set_color -o yellow) "($branch_name ✗)"
    else
      echo -sn (set_color -o blue) "($branch_name ✓)"
    end
  end
  echo -sn (set_color normal) " "
end
