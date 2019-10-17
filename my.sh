#!/usr/bin/env bash
#
# Author: jacob
# Email: 
# Github: https://github.com/bavdu
# Date:

echo ---------------------$(date)------------------------

awk '{ R[$3]++ } END{ for(i in R){ print i,R[i] }}' $1 |sort -k2 -rn

awk -v number=0 '{ R[$3]++ } END{ for(i in R){ number=number+R[i] } print "总和为："number }' $1


echo ------------------------finish--------------------------------------
