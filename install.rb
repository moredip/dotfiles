#!/usr/bin/env ruby

DRY_RUN=false

def link( src, dest = nil )
  dest ||= "."+src
  if dest_exists?(dest)
    puts "skipping #{src}, link already created"
    return
  end
  puts "linking ~/dotfiles/#{src} ~/#{dest}"
  `ln -s ~/dotfiles/#{src} ~/#{dest}` unless DRY_RUN
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
link( 'ssh' )
