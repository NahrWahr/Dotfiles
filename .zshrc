[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh
prompt grml-large

alias pluto='julia -t 8 -e "using Pluto; Pluto.run()"'
alias pm='sudo pacman --color=always'
alias vim='nvim'
alias l='grc ls -Flh'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export VISUAL=nvim;
export EDITOR=nvim;

