#!/bin/bash
###########################################
## Deps: ufw
##
## Be sure to check the license file.
##
## Script to make UFW quite restricted, undo script
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
sudo ufw default allow outgoing
sudo ufw default deny incoming

echo ""
echo "All done!"
echo ""
echo "Undo script has been run"
