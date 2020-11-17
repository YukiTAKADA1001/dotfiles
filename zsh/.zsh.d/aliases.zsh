
case ${OSTYPE} in

    darwin*)
        # For mac
        alias ls='ls -G'
        alias ll='ls -lG'
        alias la='ls -aG'
        alias lla='ls -alG'
        alias l.='ls -d .??*'
        alias ll.='ls -ld .??*'
        alias cl='clear'
        ;;

    linux*)
        # For Linux
        ;;

esac

alias mv='mv -i'
alias cp='cp -i'
alias dirs='dirs -v'
alias rm='rm -i'
alias dc='docker-compose'
