#!/bin/bash

sed -r "s/$3/$4/g" $1 > $2
cat $2
