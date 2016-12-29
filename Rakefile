require 'rake'
require 'fileutils'

def fullpath(filename)
  File.expand_path "../#{filename}", __FILE__
end

namespace :vim do
  desc 'Fetch the latest commit for each submodule'
  task :bundle do
    `git submodule update --init --recursive`
  end

  desc 'Removes a vim plugin'
  task :remove_plugin, [:plugin] do |t, args|
    plugin = args[:plugin]

    `git submodule deinit -f .vim/bundle/#{plugin}`
    `git rm .vim/bundle/#{plugin}`
  end
end

namespace :dotfiles do
  desc 'Link dotfiles'
  task :install do
    %w(.bash .bash_profile .vim .vimrc .zsh .zshrc .gemrc .config/terminator).each do |file|
      FileUtils.ln_s fullpath(file), Dir.home, verbose: true, force: true
    end
  end
end

namespace :bin do
  desc 'Link binaries'
  task :install do
    FileUtils.ln_s fullpath('bin/prettyjson'), '/usr/bin/', verbose: true, force: true
    FileUtils.ln_s fullpath('bin/prettyxml'),  '/usr/bin/', verbose: true, force: true
  end
end
