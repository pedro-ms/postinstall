#!/usr/bin/env bash
ID=ed25519

echo -ne '\nyes' | ssh-keygen -t $ID -C $GIT_EMAIL -P $SSH_PASSPHRASE

# START THE SSH-AGENT IN THE BACKGROUND
eval "$(ssh-agent -s)"

# ADD YOUR SSH PRIVATE KEY TO THE SSH-AGENT
ssh-add ~/.ssh/id_$ID