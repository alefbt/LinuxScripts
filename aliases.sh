# 
# Aliases Taken from LinkedIn - http://lnkd.in/dsBrU9F
# You may contribute more 

# ######### FUNCTIONS ###############################

# Thanks to Eric Ross
pss() { echo; ps auxwww | egrep "$@|^USER" | grep -v grep;}

# Thanks to Denis Kovalev
cls() { printf "\33[2J";}

# Thanks to Tomasz Klapinski & Carl Reynolds
mkcd() { /bin/mkdir $* && /usr/bin/cd "${@: -1}" ; }
rmk() { [ $# -eq 1 ] && sed -i $1d /home/[username]/.ssh/known_hosts ; } 

# Thanks to David A. Desrosiers
function duf { 
du -sk "$@" | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done 
} 
# ########## ALIASES ################################
# Thanks to Dave Smith
alias cls='clear' #kinda obvious, but I'm mistyping it regularly
alias getdbs='nohup lftp -f ~/.lftp/get-db-backups.script &' #pulls database backups off a remote server
alias df='df -h' 
alias ls='ls --color=tty' # nicer outputs
alias dir='/usr/local/bin/altdir' # I created a "ls" script with pattern matching, long listing, piped through more

alias maildel='postsuper -d' 
alias maillist='postqueue -p' # lists and removed mails stuck in the queue - generally bounced spam

alias ut2004='ssh -p22022 utadmin@ut.myserver.nl' 
alias ut2k4='ut2004' 
alias ut99='ssh -p22022 utadmin@ut.myotherserver.uk' # I run a few Unreal Tournament servers - but these server aliases have been moved into ".ssh/config" now so I don't use these aliases as much

# Thanks to Eric Ross
alias msg='tail -20 /var/log/messages' 
alias msgf='tail -f /var/log/messages' 
alias mlog='tail -20 /var/log/maillog' 
alias mlogf='tail -f /var/log/maillog' 
alias rd='rmdir' 
alias godns='cd /var/named' 
alias gorc='cd /etc/init.d' 
alias golog='cd /var/log' 
alias ver='cat /proc/version && cat /etc/system-release' 
alias exe='chmod u+x' 
alias cd..='cd ..' 
alias dir='ls -aFl --color' 
alias dr='ls -aF --color' 
alias dird='ls -aFld --color' # Show only directories 
alias mdstat='cat /proc/mdstat' 

# Thanks to Michael Eager
alias pd="pushd" 
alias po="popd" 
alias ..="cd ..;ls" 
alias dirs="dirs -v" 
alias h="cd \$PWD" 

# Thanks to Miguel E Arellano Quezada
alias ll='ls -l --color' 
alias la='ls -la --color' 
alias rm='rm -i' 
alias cp='cp -i' 
alias mv='mv -i' 

# Thanks to Tomasz Klapinski
alias hog="du -hs * | sort -n | egrep '(^[[:digit:]]{1,}.?[[:digit:]]?G)|(^[[:digit:]]{3,}M)'"

# Thanks to Jonathan Roberts
alias hist="history | grep $1"

# Thanks to Daniel Uland
alias cdc='cd; clear' #cd to home dir and clear screen

# Thanks to Ankur Jain
alias search='grep --color' 
alias '..'='cd..' 
alias x='chmod +x'

# Thanks to David A. Desrosiers
alias indent='indent -bap -bad -bli0 -brs -lp -i4 -cli2 -cbi0 -kr' 
alias ssh='ssh -2 -X -P -C -c 3DES' 
alias 7za='7za a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on' 
alias rms='shred -v -n50 -u' 

# Avoids VMware Workstation bug on Linux 
alias vmware="VMWARE_USE_SHIPPED_GTK=yes vmware"



