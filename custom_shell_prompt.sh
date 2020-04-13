# customize command line prompt
# copy to ~/.bashrc and source it

## Show current Git branch on bash prompt
# linux
source /etc/bash_completion.d/git
# mac
#source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

## show random emoji
function RANDOM_EMOJI() {
    retval=$?
    if [ $retval -eq 0 ]; then
      EMOJIS=('👌' '👍')
    else
      EMOJIS=('❌' '❗️')
    fi
    SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
    echo $SELECTED_EMOJI;
}

export PS1='$(RANDOM_EMOJI) \u@\h - \[\e[0;36m\]\W\[\e[0m\]$(__git_ps1) \$ '
