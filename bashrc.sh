#!/bin/bash

#  bashrc
#
#
#  Created by James Litherland on 6/3/20.
#

#bash checks for command line arguments
# \u for user, \h = hostname, \w = current location \$ = a string containing a $
PS1="\u@\h: \w \$ "
## load bash command line completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# load any tertminal-specific settings if they exist
[[ -r "/etc/bashrc_$TERM_PROGRAM" ]] && . "/etc/bashrc_$TERM_PROGRAM"

# Make bash check its window size after a process completes
shopt -s checkwinsize

prseq()
{
    [[ -n $1 ]] && seq_min="$1" || seq_min="A"
    [[ -n $1 ]] && seq_max="$2" || seq_max="Z"

    #seq_min=${seq_min^^} && seq_max=${seq_max^^} || seq_min="A" && seq_max="Z"

    seq_str=""
    seq_eval="echo -n {${seq_min^^}..${seq_max^^}}"
    seq_str="$(eval $seq_eval)"
    for n in $(eval "$seq_str"); do
        lwr=${n,}
        seq_str+="$n $lwr "
    done
    echo "$seq_str"

}

prvars()
{
  var_str=""
  for i in $(prseq); do
    echo "$i"
  done
}
