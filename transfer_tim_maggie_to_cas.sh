#!/bin/bash

INITIAL_DIR=~/Desktop/TiM
FINAL_DIR=/Volumes/psych-cog/dsnlab/TAG/behavior/This_Is_Me

for file in $INITIAL_DIR/*
do
    #parse string to ID subject ID

    #echo $SUBJ
    #parse string to ID wave

    #echo $WAVE

    #rsync -n -aiv -e $file $FINAL_DIR/SUBJ/WAVE

done
