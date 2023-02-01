#!/bin/bash

if [[ -z $1 ]] || [[ $2 ]]; then
    echo "Error argument <a lot of or few arggument>"
else
    re='^[0-9]+$'
    if [[ $1 =~ $re ]]; then
        echo "Error argument <The number received>"
    else
        echo "$1"
    fi
fi
