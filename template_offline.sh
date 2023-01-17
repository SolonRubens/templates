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
fi