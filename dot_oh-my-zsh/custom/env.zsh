export GPG_TTY=$(tty)

# Docker rootless
export PATH=/home/xia/.local/bin:$PATH
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/xia/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/xia/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/xia/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/xia/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export EDITOR=vim
export VISUAL=gedit
