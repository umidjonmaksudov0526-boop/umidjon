#!/bin/bash

echo -e "\n Fortune Teller \n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

while true
do
    echo "Ask a yes or no question:"
    read QUESTION

    if [[ $QUESTION =~ \?$ ]]
    then
        RANDOM_NUM=$(( RANDOM % ${#RESPONSES[@]} ))
        echo "${RESPONSES[$RANDOM_NUM]}"
        break
    else
        echo "Try again. Make sure it ends with a question mark (?)"
    fi
done
