#!/bin/bash
###########################################
## Deps: ufw
##
## Be sure to check the license file.
##
## Script to make UFW quite restricted
###########################################

# Is UFW installed?
if which ufw >/dev/null ; then
  echo "UFW installed, proceeding"
else
  echo "UFW NOT installed!"
  exit 2
fi

# Let's do the thing
echo "Altering the firewall needs sudo"
sudo ufw default deny outgoing
sudo ufw default deny incoming
sudo ufw allow 993
sudo ufw allow out 53
sudo ufw allow out http
sudo ufw allow out https
sudo ufw allow out 465
sudo ufw allow out 587
sudo ufw allow out 993
sudo ufw enable

echo ""
echo "All done!"
echo ""
echo "If you encounter problems,"
echo "the undo.sh script can be ran."
