SEP="%{$fg[cyan]%}|%{$reset_color%}"

BG_JOBS="%(1j.%{$fg[red]%}%j $SEP.)"

PROMPT='$SEP %c $SEP$(git_prompt_info) $BG_JOBS
> '

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=" $SEP"
ZSH_THEME_GIT_PROMPT_DIRTY=" $SEP %{$fg[green]%}+%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_CLEAN=""
