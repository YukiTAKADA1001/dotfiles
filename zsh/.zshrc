# .zshrc

readonly ZSHHOME="${HOME}/.zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for filename in $ZSHHOME/*
    do
        [[ ${filename##*/} = *.zsh ]] &&
            [ \( -f $filename -o -h $filename \) -a -r $filename ] &&
            . $filename
    done
fi

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv
eval "$(rbenv init -)"
