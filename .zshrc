# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

# This is to make `gnu-sed` available as `sed`
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# config for .zshrc
source /Users/gturner/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Syntax highlighting bundle.
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Tell Antigen that you're done.
antigen apply

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Load aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Use nvim as the default editor
export EDITOR=nvim

# Other
if [ -e "/Users/gturner/google-cloud-sdk/completion.zsh.inc" ]; then
  source '/Users/gturner/google-cloud-sdk/completion.zsh.inc'
fi

if [ -e '/Users/gturner/google-cloud-sdk/path.zsh.inc' ]; then
  source '/Users/gturner/google-cloud-sdk/path.zsh.inc'
fi


if [ -e '/Applications/Postgres.app/' ]; then
  export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
fi

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export PATH="$HOME/.bin:$PATH"
export PATH=/usr/local/bin:$PATH
export EDITOR=vim


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"

