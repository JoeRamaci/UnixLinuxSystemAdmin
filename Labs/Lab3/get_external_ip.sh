#!/bin/bash

wget -q  www.ipchicken.com 
cat index.html | grep -ohE ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+
rm index.html
