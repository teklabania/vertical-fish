function __vertical_component_git_branch
  __vertical_util_set vertical_git_branch_color  magenta --bold
  __vertical_util_set vertical_git_branch_prefix ' '
  __vertical_util_set vertical_git_show          true

  if not __vertical_util_is_git
    return
  end

  if [ $vertical_git_show != true ]
    return
  end

  set -l branch (command git symbolic-ref --short HEAD 2> /dev/null)
  set_color $vertical_git_branch_color
  echo -ens $vertical_git_branch_prefix$branch
  set_color $vertical_color_normal
end
