#!/bin/bash

###################################################################
# API for Installing DW Service.                                  #                                                                                                                                                                                     
# Author: JL                                                      #                            
###################################################################

sudo apt update
echo
if [ $(dpkg-query -W -f='${Status}' wget 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  echo
  echo "###################################################################"
  echo "Installing Wget"
  echo "###################################################################"
  echo
  sudo apt install wget;
fi
then
  echo
  echo "###################################################################"
  echo ""
  echo "###################################################################"
  echo
fi
wget https://www.dwservice.net/download/dwagent.sh
sudo chmod +x dwagent.sh
sudo ./dwagent.sh
