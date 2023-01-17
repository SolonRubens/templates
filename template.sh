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
fi