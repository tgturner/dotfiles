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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"

# export PATH=$PATH:/usr/local/go/bin
export PATH="${HOME}/sdk/go1.14.9/bin:${HOME}/development/gopath/bin:${PATH}"
# export PATH="${HOME}/sdk/go1.13.7/bin:${HOME}/development/gopath/bin:${PATH}"
export GOPATH="${HOME}/development/gopath:${HOME}/development/godev"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="${HOME}/sdk/go_appengine:${PATH}"

if [ -f ${HOME}/.config/gcloud/application_default_credentials.json ]; then
  export GOOGLE_APPLICATION_CREDENTIALS=${HOME}/.config/gcloud/application_default_credentials.json
fi

# pendo git tools setup
export PATH="${HOME}/development/pendo-appengine/tools/gitcmds:${PATH}"
source "${HOME}/development/pendo-appengine/tools/gitcmds/git-completion.bash"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/grahamturner/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
eval "$(rbenv init -)"

alias emacs="/usr/local/Caskroom/emacs/26.3/Emacs.app/Contents/MacOS/Emacs -nw"

zstyle ':prompt:pure:prompt:success' color cyan
zstyle ':prompt:pure:prompt:continuation' color cyan

# make ctl-e and ctrl-a work normally
bindkey -e
