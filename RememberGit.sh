#!/bin/bash

echo "Tell Git to remember credentials for a number of days (a week by default)"
numberOfDays=${1:-7}
git config credential.helper "cache --timeout=$[numberOfDays*3600*24]"
willLastUntil=$(date -d "$[numberOfDays+1] days")
echo -e "Done - Git will remember you until next $willLastUntil \n"