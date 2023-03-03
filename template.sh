#!/bin/bash

# Set the color variables fg
black='\033[0;30m'
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Set the color variables bg
bg_red='\033[0;41m'
bg_green='\033[0;42m'
bg_yellow='\033[0;43m'
bg_blue='\033[0;44m'
bg_magenta='\033[0;45m'
bg_cyan='\033[0;46m'
# Clear the color after that
clear='\033[0m'

if [ -z "$1" ]
then
    echo "To few arguments provided"
elif [ $1 == "c" ]
then
    wget https://raw.githubusercontent.com/SolonRubens/templates/main/src/template.c
elif [ $1 == "cpp" ]
then
    wget https://raw.githubusercontent.com/SolonRubens/templates/main/src/template.cpp
elif [ $1 == "py" ]
then
    wget https://raw.githubusercontent.com/SolonRubens/templates/main/src/template.py
elif [ $1 == "express" ]
then
    wget https://raw.githubusercontent.com/SolonRubens/templates/main/src/node_express.sh
    chmod +x node_express.sh
    if [ -z "$2" ]
    then
        ./node_express.sh
    else
        ./node_express.sh $2
    fi    
    rm node_express.sh
elif [ $1 == "vue3" ]
then
    npm init vue@latest
    cd "$(\ls -1dt ./*/ | head -n 1)"
    npm install
    npm run dev
elif [ $1 == "start" ]
then
    if [ -z "$2" ]
    then
        echo -e "${red}[WARNING] Missing Argument: process required${clear}"
        echo -e "${green}Usage: template start [process]${clear}"
        echo ""
        echo "Available processes:"
        echo "  xbg"
    elif [ $2 == "xbg" ]
    then
        kubectl port-forward -n audarisx svc/x-mongodb-sharded 27018:27017 >/dev/null
        kubectl port-forward -n fission svc/router 8888:80 >/dev/null
    fi
elif [ $1 == "-h" ]
then
    echo "---------------------------------------------------------"
    echo -e "${bg_cyan}TEMPLATE - Template generator (C) 2023 by Jonathan Silber${clear}"
    echo "---------------------------------------------------------"
    echo ""
    echo -e "${green}Usage: template [format]${clear}"
    echo ""
    echo "Supported format values:"
    echo "- c"
    echo "- cpp"
    echo "- py"
    echo "- express"
    echo "- vue3"
fi