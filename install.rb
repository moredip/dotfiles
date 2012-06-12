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
`mkdir -p ~/bin`
link( 'bin/cloc.pl','bin/cloc.pl' )
link( 'bin/rstakeout','bin/rstakeout' )
link( 'bin/stakeout_single_spec','bin/stakeout_single_spec' )
link( 'growl' )
link( 'ackrc' )

unless File.exists?( ".bash_profile" )
  File.open(  ".bash_profile", 'w'  ) do
    |f| f.puts( %Q<[ -r $HOME/.bashrc ] && source $HOME/.bashrc>)
  end
end

