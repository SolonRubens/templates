#!/bin/bash

if [ $1 == "c" ]
then
    cp /opt/templates/template.c .
elif [ $1 == "cpp" ]
then
    cp /opt/templates/template.cpp .
elif [ $1 == "py" ]
then
    cp /opt/templates/template.py .
elif [ $1 == "node_express" ]
then
    cp -R /opt/templates/node_express ./node_express
    cd node_express
    npm init
    npm i express
fi