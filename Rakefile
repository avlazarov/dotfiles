require 'rake'
require 'fileutils'


module Helper
  def self.symlink(source, destination)
    fullpath_source = File.expand_path "../#{source}", __FILE__
    FileUtils.ln_sf fullpath_source, destination, verbose: true
  end
end

namespace :vim do
  desc 'Fetch the latest commit for each submodule'
  task :bundle do
    `git submodule update --recursive --remote`
  end

  desc 'Remove a vim plugin'
  task :remove_plugin, [:plugin] do |t, args|
    plugin = args[:plugin]

    `git submodule deinit -f .vim/bundle/#{plugin}`
    `git rm .vim/bundle/#{plugin}`
  end
end

namespace :dotfiles do
  desc 'Link dotfiles'
  task :install do
    %w(.bash .bash_profile .vim .vimrc .zsh .zshrc .gemrc).each do |file|
      Helper.symlink file, Dir.home
    end

    Helper.symlink '.config/terminator', File.join(Dir.home, '.config/')
  end
end

namespace :bin do
  desc 'Link binaries'
  task :install do
    Helper.symlink 'bin/prettyjson', '/usr/bin/'
    Helper.symlink 'bin/prettyxml',  '/usr/bin/'
  end
end
