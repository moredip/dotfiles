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

#link( 'vimrc' )
#link( 'gvimrc' )
#link( 'vim' )
link( 'spacemacs' )
link( 'bashrc' )
link( 'tmux.conf' )
link( 'gitconfig' )
link( 'gitignore' )
link( 'ssh/config', '.ssh/config' )
`mkdir -p ~/bin`
link( 'bin/push_to_s3','bin/push_to_s3' )

# note, this will nuke whatever's in .profile
File.open( "#{ENV['HOME']}/.profile", 'w' ) do
  |f| f.puts( %Q<[ -r $HOME/.bashrc ] && source $HOME/.bashrc>)
end
