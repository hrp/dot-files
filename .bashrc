# .bashrc

# User specific aliases and functions
source /etc/profile

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#####
# Z is the new J
. ~/tools/z.sh

#################
# Aliases

# -> Prevents accidentally clobbering files.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# easier to jump around
alias ..='cd ..'

# vim7 hackety hack
alias vim7='~/tools/vim/bin/vim'
alias vi7='~/tools/vim/bin/vim'
alias vi='~/tools/vim/bin/vim'

# force colors on ls
alias ls='ls --color=always'

# force colors on grep
alias grep='grep --color=ALWAYS'

export EDITOR=/usr/bin/vi

# Set the screen title
  case $TERM in
    screen*)
      # This is the escape sequence ESC k \w ESC \
      #Use path as titel
      SCREENTITLE='\[\ek\w\e\\\]'
      #Use program name as titel
      # SCREENTITLE='\[\ek\e\\\]'
      ;;
    *)
      SCREENTITLE=''
      ;;
  esac


PS1="${SCREENTITLE}${PS1}"
