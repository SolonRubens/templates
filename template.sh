#!/bin/bash

if [ $1 == "c" ]
then
    wget https://raw.githubusercontent.com/SolonRubens/templates/main/template.c
elif [ $1 == "cpp" ]
then
    wget https://raw.githubusercontent.com/SolonRubens/templates/main/template.cpp
elif [ $1 == "py" ]
then
    wget https://raw.githubusercontent.com/SolonRubens/templates/main/template.py
elif [ $1 == "node_express" ]
then
    git clone --branch main --no-checkout https://github.com/SolonRubens/templates.git
    cd templates
    git sparse-checkout set node_express
    git checkout main
    cd ..
    cp -R templates/node_express ./node_express
    rm -r templates
    cd node_express
    npm init
    npm i express
fi