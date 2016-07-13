function ql --description "Quick Look a file or directory"
  if count $argv >/dev/null
    qlmanage >/dev/null ^/dev/null -p $argv &
  end
end
