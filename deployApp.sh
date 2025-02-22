#/bin/bash

# Load PAT from an environment variable
GIT_TOKEN=$(cat $HOME/ting/pat)

# Perform git pull with PAT
git pull https://EmilMotroen:$GIT_TOKEN@github.com/EmilMotroen/deployApp.git

sudo systemctl daemon-reload
sudo systemctl restart myscript.service
sudo systemctl status myscript.service