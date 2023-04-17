#
# quick helpful functions 
#

#git pull all child directories
#this script will sync all git repos inside it's child directory
gitpull() {
    DIRS=`ls -l . | egrep '^d' | awk '{print $9}'`

    for DIR in $DIRS
    do
        echo  ${DIR}
        cd ${DIR} && git pull && cd ..
    done
}

# building cscope database
cscopebuild() {
    OUTPUTDIR="$(pwd)/output"
    OUTPUTTMPDIR="/tmp/output"

    if [ -d "$OUTPUTDIR" ]; then
        mv output /tmp
    fi

    find . -name "*.[chsS]" -o -name "*.cpp" -o -name "*.py" -o -name "*.go" -o -name "*.sh" -o -name "*.ini" -o -name "*.rst" -o -name "*.yaml" -o -name "*.txt" -o -name "*.json" > cscope.files
    cscope -bq > /dev/null 2>&1

    if [ -d "$OUTPUTTMPDIR" ]; then
        mv /tmp/output .
    fi

#cscope -d
}


# Extracts any archive(s) (if unp isn't installed)
extract () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       rar x $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7z x $archive        ;;
				*)           echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

# Searches for text in all files in the current folder
ftext ()
{
	# -i case-insensitive
	# -I ignore binary files
	# -H causes filename to be printed
	# -r recursive search
	# -n causes line number to be printed
	# optional: -F treat search term as a literal, not a regular expression
	# optional: -l only print filenames and not the matching lines ex. grep -irl "$1" *
	grep -iIHrn --color=always "$1" . | less -r
}


# Copy file with a progress bar
cpp()
{
	set -e
	strace -q -ewrite cp -- "${1}" "${2}" 2>&1 \
	| awk '{
	count += $NF
	if (count % 10 == 0) {
		percent = count / total_size * 100
		printf "%3d%% [", percent
		for (i=0;i<=percent;i++)
			printf "="
			printf ">"
			for (i=percent;i<100;i++)
				printf " "
				printf "]\r"
			}
		}
	END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}


export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#set prompt style
export PS1="\[\033[38;5;45m\]┌──(\[$(tput sgr0)\]\[\033[38;5;27m\]\u@\H\[$(tput sgr0)\]\[\033[38;5;45m\])-[\[$(tput sgr0)\]\w\[$(tput sgr0)\]\[\033[38;5;45m\]]\[$(tput sgr0)\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\n\[$(tput sgr0)\]\[\033[38;5;45m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
force_color_prompt=yes

#colorize outputs
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

#alias's
alias lh='ls -lah'
alias ta='tmux attach -t'
alias sctl='sudo systemctl'

export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

alias vi=lvim
export CSCOPE_EDITOR=lvim
export GOROOT=$HOME/go20/go
export GOPATH=$HOME/go20/gocode
export GO111MODULE=auto
export NPMPATH=$HOME/.npm-global/bin
export LVIMPATH=$HOME/.local/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:$GOROOT/bin:$NPMPATH:$LVIMPATH
