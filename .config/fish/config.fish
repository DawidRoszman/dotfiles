set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias lt='eza --icons=auto --tree' # list folder as tree
alias tn='~/.config/tm-sess.sh'
alias t='tmux a'
alias lg='lazygit'
alias c='clear'
alias xclipc='xclip -selection clipboard'
alias cc='python ~/.config/git-commit-from-task/main.py'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

set -gx SHELL "/usr/bin/fish"

# pnpm
set -gx PNPM_HOME "/home/droszman/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
set -gx PATH "$HOME/.local/share/nvim/nvim/bin" $PATH
