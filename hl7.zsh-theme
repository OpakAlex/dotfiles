BGP="%(1j. %{$fg[red]%}%j %{$fg[cyan]%}|%{$reset_color%}.)"
PROMPT='%{$fg[cyan]%}| %{$reset_color%}%c %{$fg[cyan]%}|$(git_prompt_info)%{$reset_color%}$BGP '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$fg[cyan]%}|"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[cyan]%}| %{$fg[green]%}+%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_CLEAN=""
