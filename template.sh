#!/bin/bash

if [ -z "$1"]
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
elif [ $1 == "node_express" ]
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
elif [ $1 == "-h" ]
then
    echo "---------------------------------------------------------"
    echo "TEMPLATE - Template generator (C) 2023 by Jonathan Silber"
    echo "---------------------------------------------------------"
    echo ""
    echo "Usage: template [format]"
    echo ""
    echo "Supported format values:"
    echo "  c"
    echo "  cpp"
    echo "  py"
    echo "  node_express"
    echo "  vue3"
fi