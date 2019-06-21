#!/bin/sh

exitCode=$(ls)
if [ "$exitCode" -eq 1 ]
then
    echo "shit"
fi