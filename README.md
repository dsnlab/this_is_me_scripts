# this_is_me_scripts

# for transfer_tim_maggie_to_cas.sh...

## What this script does:
* It copies and sorts the contents of This is Me videos from /Users/maggie/Desktop/TAG_TIM/ into subject and wave specific folders on the CAS server, e.g.,  /Volumes/psych-cog/dsnlab/TAG/behavior/This_Is_Me/TAG###/Wave #. 
* If the destination folder does not exist, it will make it.
* It expects input files in the format TAG001 (wave 1 implied), TAG001w2, or TAG001w3. This exact format is important, although it can handle uppercase "W" instead of lowercase "w," since that was a common typo. 
* The script identifies files that have been modified, so it doesn't waste time re-copying files that have already been sorted.

## How to use this script: 
1. Make sure that the CAS server is mounted. 
2. Open terminal
3. Change to the script directory/folder by typing: cd ~/projects/dsnlab/this_is_me_scripts 
4. Run the script by typing: bash transfer_tim_maggie_to_cas.sh 
* Pro tip: If you type "bash t" and then hit tab, the rest of the script name should autocomplete because it is the only thing that starts with "t" in the folder
5. Check that the output is correct:

a. This is an example of what the output should look like for any new files in terminal: 

sent 103568105 bytes  received 42 bytes  15933561.08 bytes/sec
total size is 103555337  speedup is 1.00
building file list ... done
>f+++++++ TAG207.mov

b. You can also open up finder and navigate to the CAS server. From there, manually that files have been transferred by clicking into the folders. 

If there are any errors, please contact tcheng@uoregon.edu 
