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

	#if wave is an empty variable, it equals 1
    if [ -z $WAVE ]; then
    	WAVE=1
    fi 

    # rsync file to CAS
    THE_SPOT=${FINAL_DIR}/TAG${SUBJECT_ID}/Wave_${WAVE}
    NOT_THE_SPOT=${FINAL_DIR}/TAG${SUBJECT_ID}/Wave\ ${WAVE} 

	#if file directory structure doesn't exist, make it
    
    #echo "$NOT_THE_SPOT"
    #echo "$THE_SPOT"

    mv -v -i "$NOT_THE_SPOT" "$THE_SPOT" #

    if [ ! -d "$THE_SPOT" ]; then
        mkdir -p $THE_SPOT
    fi
    
    #if the wrong file directory structure exists, then rename it (get rid of blank space between Wave and number)
    #if [ -d "$NOT_THE_SPOT" ]; then
    #    echo "$NOT_THE_SPOT"
    #    echo "$THE_SPOT"
        
    #fi
    
    # rsync files to the correct location
    rsync -aiv ${file} "${THE_SPOT}"

done
