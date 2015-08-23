function fish_prompt

  set -l bold_green (set_color -o green --bold)
  set -l bold_blue (set_color -o blue --bold)
  set -l bold_yellow (set_color -o yellow --bold)
  set -l normal (set_color normal)

  set -l cwd $bold_green(basename (prompt_pwd))

  if git rev-parse --is-inside-work-tree > /dev/null ^ /dev/null
    set -l git_branch (git symbolic-ref --short HEAD ^ /dev/null)

    if git diff-index --no-ext-diff --quiet HEAD > /dev/null ^ /dev/null
      set git_info "$bold_blue($git_branch ✓)"
    else
      set git_info "$bold_yellow($git_branch ✗)"
    end
  end

  echo -n -s $cwd $git_info $normal ' '
end
