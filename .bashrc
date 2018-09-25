# .bashrc

export NCURSES_NO_UTF8_ACS=1
PS1='[\t]\u@\h:\w $ '

#stty stop ''

# User specific aliases and functions

alias poweroff='echo NO WAY'
alias reboot='echo NO WAY'

alias rm='rm -i'
alias cp='cp -bi'
alias mv='mv -i'

alias ee='nano'
alias lt='ls -alt'
alias lr='ls -altr'
alias ll='ls -al'
alias cls='clear'

alias eesquid='nano /etc/squid/squid.conf'
alias ea='nano /etc/httpd/conf/httpd.conf'
alias html='cd /var/www/html'
alias oc='cd /var/www/html/owncloud/data/andrew/files'
alias px='ps auxfw'
alias netn='netstat -puatn'
alias h='cd ~'
alias repo='cd /etc/yum.repos.d'
alias webp='nano /var/www/html/private/index.html'

#alias grep='grep --color=auto'	
alias grep='grep --color=always'

alias sizes='du -Sh | sort -rh | head -25'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# log every command typed because i'm gettin' old !
if [ -n "${BASH_VERSION}" ]; then
    trap "caller >/dev/null || \
printf '%s\\n' \"\$(date '+%Y-%m-%dT%H:%M:%S%z')\
 \$(tty) \${BASH_COMMAND}\" 2>/dev/null >>~/.command_log" DEBUG
fi

alias log='cd /var/log'
alias sou='source ~/.bashrc'
alias brc='nano ~/.bashrc'

pushd()
{
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" > /dev/null
  echo -n "DIRSTACK: "
  dirs
}

pushd_builtin()
{
  builtin pushd > /dev/null
  echo -n "DIRSTACK: "
  dirs
}

popd()
{
  builtin popd > /dev/null
  echo -n "DIRSTACK: "
  dirs
}

# toggle for directory tracking
#alias cd='pushd'
alias cd='command cd'
#
alias back='popd'
alias flip='pushd_builtin'
alias dirv='dirs -v'
alias dirc='dirs -c'
alias scm='nano /var/www/html/private/index.html'
alias scmd='cd /var/www/html/private'
alias fid='find . -type d -ls'
alias lsf="ls -l | egrep -v '^d'"
alias lsd="ls -l | egrep '^d'"

#alias yum-update='yum update --exclude=webmin'

#source /opt/rh/devtoolset-2/enable
#source /opt/rh/devtoolset-6/enable

alias tips='cd /tips'
alias py='python'
alias smbc='nano /etc/samba/smb.conf'
alias smbr='service smb restart;service nmb restart' 
