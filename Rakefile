require 'rake'
require 'fileutils'


def dotfile(filename)
  File.expand_path "../#{filename}", __FILE__
end

def homepath(filename)
  File.dirname File.join(Dir.home, filename)
end

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
  %w(.bash .bash_profile .vim .vimrc .zsh .zshrc .gemrc .config/terminator).each do |file|
    FileUtils.ln_s dotfile(file), homepath(file), verbose: true, force: true
  end
end
