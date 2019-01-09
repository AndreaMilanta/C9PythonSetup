#
# NOTE: this file requires the filepath to the file with the existing ssh
#
# NOTE: this file must be given execution rights with the command
#
#       chmod +x gitsetup.sh
#

# copy key from file to ssh account
cp $1.pub ~/.ssh/$1.pub
cp $1 ~/.ssh/$1

# start ssh agent and assign key to it
eval $(ssh-agent -s)
ssh-add ~/.ssh/$1