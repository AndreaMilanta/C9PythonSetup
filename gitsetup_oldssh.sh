#
# NOTE: this file requires the email for the github account
#
# NOTE: this file must be given execution rights with the command
#
#       chmod +x gitsetup_newssh.sh
#

# generate SSH key
ssh-keygen -t rsa -b 4096 -C "$1"

# copy public key to file in folder to be copied to GitHub account
cp ~/.ssh/id_rsa.pub publicKey

# start ssh agent and assign key to it
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
