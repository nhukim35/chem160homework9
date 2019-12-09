#!/bin/bash 
for i in *$1*; do 
grep aapl $i | awk '{print $2}'
done 
