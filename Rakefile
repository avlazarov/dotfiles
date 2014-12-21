require 'rake'
require 'fileutils'

namespace :vim do
  desc "Fetch the latest commit for each submodule"
  task :bundle do
    `git submodule update --init --recursive`
  end

  desc "Removes a vim plugin"
  task :remove_plugin, [:plugin] do |t, args|
    plugin = args[:plugin]

    `git submodule deinit -f .vim/bundle/#{plugin}`
    `git rm .vim/bundle/#{plugin}`
  end
end

task :install do
  desc "Copy all dotfiles to the home directory"
  %w(.bash .bash_profile .vim .vimrc .Xmodmap .zsh .zshrc .gemrc).each do |dotfile|
    FileUtils.ln_s File.join(Dir.pwd, dotfile), ENV['HOME'], verbose: true, force: true
  end
end
