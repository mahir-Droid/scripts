#!/bin/bash

find $1 -type f -name "*.tif" -print0 | xargs -0 shuf -e -n $3 -z | xargs -0 cp -vt $2

