# vim: set foldmethod=marker:
#{{{ history
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh/history
#}}}
#{{{system undefault
eval "`dircolors`"
export LS_OPTIONS='--color=auto'
export PYTHONPATH="~/.vim/plugged/ropevim/"
export EDITOR="vim"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias mkdir='mkdir -p'
#}}}
#{{{ typo and shortcut aliases
alias gi="git"
alias gitlg='git lg'
alias gits="git s"
alias gti='git'

alias py='python'

alias node="nodejs"
#}}}
#{{{ cd
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

setopt autocd
#}}}
#{{{ others
alias tmux="TERM=xterm-256color tmux"
mkc(){
  mkdir -p "$@" && cd "$@"
}
#}}}
#{{{load plugins

#git clone https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

#git clone https://github.com/zsh-users/zsh-history-substring-search
source ~/.zsh/plugin/zsh-history-substring-search/zsh-history-substring-search.zsh

#git clone https://github.com/tarruda/zsh-autosuggestions
source ~/.zsh/plugin/zsh-autosuggestions/autosuggestions.zsh
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

source ~/.zsh/prompt.zsh
#}}}
