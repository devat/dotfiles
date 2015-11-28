setopt prompt_subst
git_prompt(){
  git_status_output=$(git status 2> /dev/null) || return

  branch_name(){
    sed -n 's/On branch //p' <<< "$git_status_output"
  }

  match_against_status(){
    local pattern="$1"
    [[ "$git_status_output" =~ ${pattern} ]]
  }

  local_changes(){
    match_against_status 'Changes not staged for commit'
  }

  untracked_files(){
    match_against_status 'Untracked files'
  }

  staged_files(){
    match_against_status 'Changes to be committed'
  }

  branch(){
    branch_colour=40
    if local_changes; then
      if staged_files; then
        branch_colour=165 #violet
      else
        branch_colour=196 #red
      fi
    elif staged_files; then
      branch_colour=57 #blue
    fi

    if untracked_files; then
      echo " %F{$branch_colour}%U$(branch_name)%u%f"
    else
      echo " %F{$branch_colour}$(branch_name)%f"
    fi
  }

  echo -e "$(branch)"
}
PROMPT='%F{250}%T%f %F{30}%~%f$(git_prompt) %F{33}$%f '
