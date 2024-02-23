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
  echo
  echo "###################################################################"
  echo -e "\e[1;41m 1 Enter \e[0m"
  echo -e "\e[1;41m Enter \e[0m"
  echo -e "\e[1;41m 1 Enter \e[0m"
  echo -e "\e[1;41m 1 Enter \e[0m"
  echo -e "\e[1;41m Enter installation code (aan te maken via dwservice.net) \e[0m"
  echo "###################################################################"
  echo
wget https://www.dwservice.net/download/dwagent.sh
sudo chmod +x dwagent.sh
sudo ./dwagent.sh
