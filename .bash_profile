source ~/.bash/aliases
source ~/.bash/config

export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
export DISABLE_SPRING=1
export HISTSIZE=10000
export HISTFILESIZE=10000

export GOROOT=/usr/local/go
export GOPATH=$HOME/projects/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export PATH="${PATH}:${HOME}/.krew/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
