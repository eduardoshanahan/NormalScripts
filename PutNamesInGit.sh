#!/bin/bash

echo "Pass your name and email if you are not me"
git config --global user.name ${1:-"Eduardo Shanahan"}
git config --global user.email ${2:-contact@eduardoshanahan.com}