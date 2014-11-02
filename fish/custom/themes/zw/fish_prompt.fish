function fish_prompt

  if not set -q -g __fish_zw_functions_defined
    set -g __fish_zw_functions_defined
    function _git_branch_name
      echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end

    function _is_git_dirty
      echo (command git status -s --ignore-submodules=dirty ^/dev/null)
    end
  end

  set -l bold_green (set_color -o green --bold)
  set -l bold_blue (set_color -o blue --bold)
  set -l normal (set_color normal)

  set -l cwd $bold_green(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)
    set -l git_status " ✓"

    if [ (_is_git_dirty) ]
      set -l git_status " ✗"
    end

    set git_info "$bold_blue($git_branch$git_status)"
  end

  echo -n -s $cwd $git_info $normal ' '
end
