# linux show different prompt by previous command return value
# copy to ~/.bashrc and source it

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

export PS1='$(RANDOM_EMOJI) \u@\h - \e[0;36m\W\e[m \$ '
