#!/bin/bash
# this script transfers movies from Maggie and sorts them into the correct directory structure in CAS
# Theresa Cheng | 01.29.2019

INITIAL_DIR=~/Desktop/TAG_TIM
FINAL_DIR=/Volumes/psych-cog/dsnlab/TAG/behavior/This_Is_Me

for file in $INITIAL_DIR/*
do
    
    # parse file to get filename, i.e. remove directories
    filename=`echo $file | sed 's/\/Users\/maggie\/Desktop\/TAG_TIM\/TAG//g' | sed 's/\..*//g'` 
    # 1st sed: remove the beginning of the file structure
    # 2nd sed: a literal period and then any character any number of times
    
    #parse filename to obtain SUBJECT ID
    SUBJECT_ID=${filename:0:3}

    #parse filename to obtain WAVE
    WAVE=`echo $filename | awk 'BEGIN {FS="w|W"}{print $2}'` # if it begins with "w" or "W", print the part after

    if [ -z $WAVE ]; then
    	WAVE=1
    fi #if wave is an empty variable, it equals 1
   
    echo $WAVE

    #if file directory structure doesn't exist, make it

    # mkdir -p
    echo  $FINAL_DIR/
    # rsync files to the correct location
    #rsync -n -aiv -e $file $FINAL_DIR/SUBJ/WAVE

done