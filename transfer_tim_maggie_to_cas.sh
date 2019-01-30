#!/bin/bash
# this script transfers movies from Maggie and sorts them into the correct directory structure in CAS
# Theresa Cheng | 01.29.2019

INITIAL_DIR=~/Desktop/TAG_TIM
FINAL_DIR=/Volumes/psych-cog/dsnlab/TAG/behavior/This_Is_Me

for file in $INITIAL_DIR/*
do
    #parse string to obtain SUBJECT ID

    filename=`echo $file | sed 's/\/Users\/maggie\/Desktop\/TAG_TIM\/TAG//g' | sed 's/\..*//g'` 
    # first sed: remove the beginning of the file structure
    # second sed: a literal period and then any character any number of times
    #echo $test
    
    # next step: take the first three numbers of this:
    echo $filename | awk 'BEGIN {FS="w|W"}{print $1}' # if it begins with a lowercase or uppercase W, print the part before the W

    #echo $SUBJECT_ID

    #parse string to obtain WAVE

    #echo $WAVE

    #make file directory structure
    #rsync -n -aiv -e $file $FINAL_DIR/SUBJ/WAVE

done
