export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

HISTFILESIZE=10000000
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
