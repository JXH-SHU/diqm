#!/bin/bash

echo "Reference,Distorted,A_Map,A_P75,A_P95,L_Map,L_P75,L_P95,R_Map,R_P75,R_P95" > data.csv
paste -d',' \
    <(ls -1 ref/ | grep .mat  | sort) \
    <(ls -1 stim/ | grep .mat | sort) \
    <(ls -1 driim/ | grep _a_ | sort) \
    <(ls -1 driim/ | grep _a_ | sort | cut -d_ -f5 ) \
    <(ls -1 driim/ | grep _a_ | sort | cut -d_ -f7 | sed -e 's|\.png||') \
    <(ls -1 driim/ | grep _l_ | sort) \
    <(ls -1 driim/ | grep _l_ | sort | cut -d_ -f5 ) \
    <(ls -1 driim/ | grep _l_ | sort | cut -d_ -f7 | sed -e 's|\.png||') \
    <(ls -1 driim/ | grep _r_ | sort) \
    <(ls -1 driim/ | grep _r_ | sort | cut -d_ -f5 ) \
    <(ls -1 driim/ | grep _r_ | sort | cut -d_ -f7 | sed -e 's|\.png||')  >> data.csv
