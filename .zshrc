# Enable colors for the 'ls' command
export CLICOLOR=1

# Define the colors (The "Gxfx..." string is the color map)
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Create an alias so 'ls' always uses color
alias ls='ls -G'
alias ll='ls -alGF'
export PATH=$PATH:$HOME/go/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# git branch logic
autoload -Uz vcs_info
setopt PROMPT_SUBST
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'

PROMPT='%F{cyan}${vcs_info_msg_0_}%f%F{cyan}»%f '
