ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function hg_prompt {
    hg prompt " {$fg[green]{branch}$reset_color}{($fg_bold[blue]{bookmark}$reset_color)}{ $fg[red]{status}$reset_color}" 2> /dev/null
}

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo »; fi
}

PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
)
%{$fg[magenta]%}%n%{$reset_color%} %{$fg[green]%}»%{$reset_color%} %{$fg[yellow]%}%m%{$reset_color%} %{$fg[green]%}›%{$reset_color%} %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)$(hg_prompt)
%_$(prompt_char) '

RPROMPT='%{$fg[green]%}%*%{$reset_color%}'

# $(git_prompt_info)
