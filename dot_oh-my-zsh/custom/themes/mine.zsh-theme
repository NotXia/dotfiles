prompt_virtualenv() {
  local env=""

  if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
    env="%F{magenta}(conda:$CONDA_DEFAULT_ENV) "
  elif [[ -n "$VIRTUAL_ENV" ]]; then
    env="%F{magenta}(env:$VIRTUAL_ENV) "
  fi

  echo -n "$env"
}

PROMPT='%B%F{cyan}%n@%m%F{blue} :: %B%F{green}%3~ $(git_prompt_info)$(prompt_virtualenv)%B%F{blue}»%f%b '
RPS1='%(?..%F{red}%? ↵%f)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

