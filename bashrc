# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

#PS1='\h:\W \u\$ '
PS1="\e[00;31m[\e[00m\s : \e[00;36m\w\e[00;31m]\$\e[00m ";
# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"
