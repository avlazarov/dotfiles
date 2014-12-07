require 'rake'
require 'fileutils'

namespace :vim do
  desc "Fetch the latest commit for each submodule"
  task :bundle do
    `git submodule foreach git pull origin master`
  end
end

task :install do
  desc "Copy all dotfiles to the home directory"
  %w(.bash .bash_profile .vim .vimrc .Xmodmap .zsh .zshrc .gemrc).each do |dotfile|
    FileUtils.ln_s File.join(Dir.pwd, dotfile), ENV['HOME'], verbose: true, force: true
  end
end
