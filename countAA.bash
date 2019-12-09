#!/bin/bash
if [ ! -f $1 ]; then
        echo "Cannot find protein life"
        exit 1
fi 

if [ $# -ne 1 ]; then 
        echo "This script requires a protein file"
        exit 1
fi 
for i in ALA ARG ASN ASP CYS GLU GLN GLY HIS ILE LEU LYS MET PHE PRO SER THR TRP TYR VAL; do 
        echo -n $i " "
        cat $1 | grep $i | wc | awk '{print $1}'
done  
