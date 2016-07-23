function fish_prompt
  set -l cwd (set_color $fish_color_cwd) (basename (prompt_pwd))

  if git_is_repo
    set -l git_branch (git symbolic-ref --short HEAD ^ /dev/null)

    if git_is_touched
      echo -n -s $cwd (set_color $fish_color_host_alt) "(" $git_branch " ✗)" (set_color normal) " "
    else
      echo -n -s $cwd (set_color $fish_color_host) "(" $git_branch " ✓)" (set_color normal) " "
    end
  else
    echo -n -s $cwd (set_color normal) " "
  end
end
