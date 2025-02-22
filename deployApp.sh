#/bin/bash

# Load PAT from an environment variable
GIT_TOKEN=$(cat $HOME/ting/pat)

# Prompt user to specify which branch to pull
read -p "Enter the branch name to pull: " BRANCH_NAME

# Perform git pull with PAT and capture the exit status
git pull https://EmilMotroen:$GIT_TOKEN@github.com/EmilMotroen/deployApp.git $BRANCH_NAME
GIT_PULL_STATUS=$?

# Check if git pull was successful
if [ $GIT_PULL_STATUS -eq 0 ]; then
    # Reload and restart the service
    sudo systemctl daemon-reload
    sudo systemctl restart myscript
    sudo systemctl status myscript
else
    echo "git pull failed with exit status $GIT_PULL_STATUS. Service not restarted."
fi