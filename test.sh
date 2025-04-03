#!/bin/bash

# ./test.sh compilateur --parse_only

compilateur=$1

test_parsing() {
    for f in ./tests/*.ml; do
    b=$(basename "$f" .ml)
    path='./tests/'
    echo 'test'
    echo "$path$b"
    "$compilateur" --parse_only -o "$path$b" $f;
    done
}

test_parsing 