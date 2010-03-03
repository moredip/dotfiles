#!/usr/bin/env ruby

DRY_RUN=false

def link( src, dest = nil )
  dest ||= "."+src
  puts "linking ~/dotfiles/#{src} ~/#{dest}"
  `ln -s ~/dotfiles/#{src} ~/#{dest}` unless DRY_RUN
end

link( 'vimrc' )
link( 'vim' )
link( 'irbrc' )
link( 'bashrc' )
link( 'gitconfig' )
link( 'ssh' )
