project_pwd() {
  echo $PWD | sed -e "s/\/Users\/$USER/~/" -e "s/~\/Projects\/\([^\/]*\)/%{$fg[$PROMPT_COLOR]%}project:%{$fg[white]%}\\1/"
}

precmd() {
  local TITLE=$(echo $PWD | sed -e "s/\/Users\/$USER/~/" -e "s/~\/Projects\/\([^\/]*\)/project:\\1/")
  echo -ne "\e]1;$TITLE\a"
}

export RVMLONG=1
rvm_prompt_info() {
  local GEMSET=`__rvm_current_gemset`
  local VERSION=""

  if [[ RVMLONG -eq 1 ]]; then
    VERSION=$(ruby -v|cut -d' ' -f2)@
  fi;

  if [ $GEMSET ]; then echo "%{$fg[blue]%}$VERSION$GEMSET%{$reset_color%} "; fi
}


PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%} %{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)$(rvm_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
