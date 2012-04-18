# apt
alias get="sudo apt-get install"
alias upgrade="sudo apt-get upgrade"
alias update="sudo apt-get update"
alias remove="sudo apt-get remove"
alias check="sudo apt-get check"

# misc
alias please="sudo"
alias zipr="zip -r"
alias ..="cd .."
alias reload=". ~/.bashrc"
function take {
  mkdir $1
  cd $1
}

# ls
alias l="ls -lahF"

# Git
alias g="git"
alias gb="git branch"

alias gpr="git pull --rebase"

alias ga="git add"
alias gaa="git add -A"

alias gc="git commit"
alias cdd="cd -"  # previous PWD
alias gcm="git commit -m"

alias gr="git rebase"

alias gst="git status"

alias gs="git stash"
alias gsp="git stash pop"

alias gco="git checkout"

alias gcl="git clone"
alias g:wl="git log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"

# RUBY

alias b="bundle"
alias be="bundle exec"

alias rdm="rake db:migrate"
alias rdmr="rake db:migrate:reset"
alias rdtp="rake db:test:prepare"

alias rgm="rails g migration"

alias spr="be spork rspec"
alias spc="be spork cucumber"

# Other
alias lookk="cd ~/garmz/"
