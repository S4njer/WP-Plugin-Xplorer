#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Ctrl_C
ctrl_c ()
{
  echo -e "[+] Exiting...."
  exit 1
  
}
trap ctrl_c SIGINT

# Script

ip=$1
port=$2
if [[ $ip ]] && [[ $port ]]; then
    if [[ $? -eq 0 ]]; then
      rm source_code.txt 2>/dev/null 
      timeout 2 bash -c "curl -s -X GET "http://$ip:$port" > source_code.txt"
      if [[ $? -ne 0 ]]; then
        echo -e "[+] There isn't connection to the host or port, try again!"
        exit 1
      else
        echo -e "\n${greenColour}[+] These are the plugins found:${endColour}"
        cat source_code.txt | grep -oP 'plugins/\K[^/]+' | sort -u > plugins.txt 
        cat plugins.txt | tr '-' ' ' | sponge plugins.txt
        rm source_code.txt
        while read line; do
          echo -e  "\n${yellowColour}[+]${endColour} Plugin name: ${yellowColour}$line${endColour}\n$(searchsploit $line)"
        done < plugins.txt 
        rm plugins.txt
      fi
    else
      echo -e "[+] No plugins found"
    fi
else
  echo -e "[+] Uso: \n\t$0 <ip_address> <port>"
fi

