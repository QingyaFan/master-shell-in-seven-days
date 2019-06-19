#!/bin/sh

. ./a.sh

person="cheerfun"
getName ${person}

echo "$(getName ${person})'s age is ${age}"