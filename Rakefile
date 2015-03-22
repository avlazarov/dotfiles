require 'rake'
require 'fileutils'


def dotfile(path)
  File.expand_path("../#{path}", __FILE__)
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
    FileUtils.ln_s dotfile(file), ENV['HOME'], verbose: true, force: true
  end
end

desc "Ubuntu keymappings"
task :mappings do
  # Keep the original file just in case
  FileUtils.mv '/usr/share/X11/xkb/symbols/pc', '/usr/share/X11/xkb/symbols/pc_original', verbose: true, force: false

  FileUtils.ln_s dotfile('X11/xkb/symbols/pc'), '/usr/share/X11/xkb/symbols/pc', verbose: true, force: false

  # Remove xkb's cache
  FileUtils.rm Dir.glob('/var/lib/xkb/*'), force: true
end
