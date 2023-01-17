#!/bin/bash

if [ $1 == "c" ]
then
    cp /opt/templates/src/template.c .
elif [ $1 == "cpp" ]
then
    cp /opt/templates/src/template.cpp .
elif [ $1 == "py" ]
then
    cp /opt/templates/src/template.py .
elif [ $1 == "node_express" ]
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
fi