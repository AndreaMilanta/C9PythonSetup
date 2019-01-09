#
# NOTE: this file must be given execution rights with the command
#
#       chmod +x Python36setup.sh
#
# NOTE: Once you have executed the file, open a new bash
#

#update
sudo yum -y update
sudo yum -y install python36 # Installs Python 3.6.

#upgrade pip
sudo python36 -m pip install --upgrade pip

#setup aliases
echo -e "\nalias pip='sudo /usr/local/bin/pip3.6'" >> ~/.bashrc
echo -e "\nalias python='python36'" >> ~/.bashrc
source ~/.bashrc
. ~/.bashrc

#upgrade pip
sudo /usr/local/bin/pip3.6 install --upgrade pip
