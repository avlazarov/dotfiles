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
alias web="chromium-browser"
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

alias gca="git commit --amend"

alias ga="git add"
alias gaa="git add -A"

alias guf="git reset HEAD"

alias gc="git commit"
alias cdd="cd -"
alias gcm="git commit -m"

alias gr="git rebase"

alias gst="git status"

alias gs="git stash"
alias gsp="git stash pop"

alias gco="git checkout"

alias gcl="git clone"
alias gl="git log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"

# RUBY

alias b="bundle"
alias be="bundle exec"

alias rdm="rake db:migrate"
alias rdmr="rake db:migrate:reset"
alias rdtp="rake db:test:prepare"

alias rgm="rails g migration"

alias spr="be spork rspec"
alias spc="be spork cucumber"


alias ree="RUBY_HEAP_MIN_SLOTS=1000000 RUBY_HEAP_SLOTS_INCREMENT=1000000 RUBY_HEAP_SLOTS_GROWTH_FACTOR=1 RUBY_GC_MALLOC_LIMIT=1000000000 RUBY_HEAP_FREE_MIN=500000"

alias spj="ree bundle exec xvfb-run specjour --rsync-port=8991"
alias spjs="ree bundle exec xvfb-run specjour spec --rsync-port=8991"
alias spjf="ree bundle exec xvfb-run specjour features --rsync-port=8991"
alias spp="bundle exec specjour prepare --rsync-port=8991"

# Other
alias lookk="cd ~/garmz/"
