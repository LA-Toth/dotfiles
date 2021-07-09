if [[ -f ~/.config/ssh-agent2 ]]
then
  (
    . ~/.config/ssh-agent2
    if ! kill -0 $SSH_AGENT_PID &>/dev/null
    then
      ~/bin/Exec ~/bin/start-ssh-agent2.sh
    fi
  )
else
    ~/bin/Exec ~/bin/start-ssh-agent2.sh
fi
