#!/usr/bin/bash

clear

figlet -f slant "Scanning on $1"

nmap "$1" -n -sP | awk '/Nmap scan report for/ {print $5}' > targets.txt

count=1
while IFS= read -r target
do
  nmap -sS "$target" -oN "tgt$count.xml"
  ((count++))
done < targets.txt

figlet -f slant "Scan Terminated. Happy hacking" | lolcat
