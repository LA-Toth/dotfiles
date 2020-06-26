if [[ -f ~/.config/ssh-agent ]]
then
. ~/.config/ssh-agent
  if ! kill -0 $SSH_AGENT_PID &>/dev/null
  then
    ~/bin/Exec ~/bin/start-ssh-agent.sh
    sleep 0.5
    . ~/.config/ssh-agent
  fi
else
    ~/bin/Exec ~/bin/start-ssh-agent.sh
    sleep 0.5
    . ~/.config/ssh-agent
fi
