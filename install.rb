#!/usr/bin/env ruby

DRY_RUN=false

def link( src, dest = nil )
  dest ||= "."+src
  full_dest = "~/#{dest}"
  if dest_exists?(full_dest)
    puts "skipping #{src}, link already created"
    return
  end
  puts "linking ~/dotfiles/#{src} #{full_dest}"
  `ln -s ~/dotfiles/#{src} #{full_dest}` unless DRY_RUN
end

def dest_exists?(dest)
  File.exists?( File.expand_path( dest ) )
end

link( 'vimrc' )
link( 'gvimrc' )
link( 'vim' )
link( 'irbrc' )
link( 'bashrc' )
link( 'gitconfig' )
link( 'gitignore' )
link( 'ssh/config', '.ssh/config' )
link( 'bin/rstakeout','bin/rstakeout' )
link( 'growl' )
link( 'ackrc' )
