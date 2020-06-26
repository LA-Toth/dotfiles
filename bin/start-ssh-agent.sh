#!/usr/bin/env bash

eval `ssh-agent`

echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" > ~/.config/ssh-agent
echo "export SSH_AGENT_PID=$SSH_AGENT_PID" >> ~/.config/ssh-agent
