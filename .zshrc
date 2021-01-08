export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="sonicradish"
plugins=(git)
source $ZSH/oh-my-zsh.sh
bindkey -v 

# Aliases:
alias p=python3
alias i=ipython
alias c=clear
alias vi=nvim
alias x=exit
alias j=julia
alias m="matlab -nodesktop -nosplash"
alias todoist="todoist &> /dev/null"
alias muscle="~/muscle3.8.31_i86darwin64"
alias bioinfo_new="docker run -i -v /Users/jbwdn/docker_shared:/home/jake/shared informatics:Dockerfile; exit"
alias bioinfo="docker exec -it adoring_tharp /bin/zsh"
alias webserver="python3 -m http.server --cgi 8080"

# Git aliases:
alias ga="git add"
alias gcom="git commit -m"
alias gp="git push"
alias gpu="git pull"
alias gd="git diff"

# Conda aliases:
alias cod="conda deactivate"
alias coa="conda activate"
alias cos="conda deactivate & conda activate"
alias col="conda env list"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jbwdn/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jbwdn/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jbwdn/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jbwdn/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
