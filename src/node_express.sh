#!/bin/bash

mkdir $1
cd $1
mkdir src
cd src
mkdir configs
mkdir controllers
mkdir middlewares
mkdir models
mkdir routes
mkdir services
mkdir utils
cd ..
mkdir test
cd test
mkdir integration
mkdir unit
cd unit
mkdir services
mkdir utils
cd ../..
npm init
npm i express
