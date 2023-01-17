#!/bin/bash

if [ -z "$1" ]
then
    echo "To few arguments provided"
elif [ $1 == "c" ]
then
    cp /opt/templates/src/template.c .
elif [ $1 == "cpp" ]
then
    cp /opt/templates/src/template.cpp .
elif [ $1 == "py" ]
then
    cp /opt/templates/src/template.py .
elif [ $1 == "express" ]
then
    cp -R /opt/templates/src/node_express ./node_express
    cd node_express
    npm init
    npm i express
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
else
    echo "An error occurred while running template"
fi