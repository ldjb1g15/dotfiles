
#	bash aliases file

# rsync aliases
alias syncdoc='rsync -ah --info=progress2 /home/ldjb/Documents/ /media/ldjb/LDJBHD/UoS/PhD/backups/current/files'
alias syncode='rsync -ah --info=progress2 /home/ldjb/codebase/ /media/ldjb/LDJBHD/UoS/PhD/backups/current/code'

# Directories
alias sources='cd ~/Documents/PhD/source_material'
alias ldjbhd='cd /media/ldjb/LDJBHD/'

alias stowdir='cd ~/linux_config/stow'
alias gitdir='cd ~/codebase/git_dir'
alias pydir='cd ~/codebase/git_dir/python/LCG'

alias glim='cd ~/codebase/git_dir/python/GLIMMA'
alias glimdata='cd ~/codebase/data_archive/GLIMMA_data/'
alias paperdata='cd ~/codebase/data_archive/paper_data/'

alias i3con='cd ~/.config/i3/ && vim config'
alias polcon='cd ~/.config/polybar/ && vim config'

alias pyenv='source ~/codebase/git_dir/python/venv/bin/activate'

# External Hard Disk
alias mhd='sudo mount /dev/sdb1 /media/ldjb/LDJBHD/'
alias umhd='sudo umount /dev/sdb1'

# General
alias vi='vim'
