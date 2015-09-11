function fish_prompt

  set -l bold_green (set_color -o green --bold)
  set -l bold_blue (set_color -o blue --bold)
  set -l bold_yellow (set_color -o yellow --bold)
  set -l normal (set_color normal)

  set -l cwd $bold_green (basename (prompt_pwd))

  if git_is_repo
    set -l git_branch (git symbolic-ref --short HEAD ^ /dev/null)

    if git_is_touched
      echo -n -s $cwd $bold_yellow "(" $git_branch " ✗)" $normal " "
    else
      echo -n -s $cwd $bold_blue "(" $git_branch " ✓)" $normal " "
    end
  else
    echo -n -s $cwd $normal " "
  end
end
