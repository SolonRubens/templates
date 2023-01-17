#!/bin/bash

if [ $1 == "c" ]
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
    git clone --branch main --no-checkout https://github.com/SolonRubens/templates.git
    cd templates
    git sparse-checkout set node_express
    git checkout main
    cd ..
    cp -R templates/src/node_express ./node_express
    rm -r templates
    cd node_express
    npm init
    npm i express
elif [ $1 == "vue3" ]
then
    npm init vue@latest
    cd "$(\ls -1dt ./*/ | head -n 1)"
    npm install
    npm run dev
fi