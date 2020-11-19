
if [ ! -e ~/.zsh.d/completion/git-completion.bash ]; then
    curl -o ~/.zsh.d/completion/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

if [ ! -e ~/.zsh.d/completion/_git ]; then
    curl -o ~/.zsh.d/completion/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

zstyle ':completion:*:*:git:*' script ~/.zsh/completion/git-completion.bash

fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i
