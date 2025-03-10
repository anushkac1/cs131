#!/bin/bash

datetime=$(date "+%F-%T")   #store the date and time in a variable 
taxi_dataset="2019-01-h1.csv" #get the taxi dataset as input

#iterate for loop for ID's 1, 2 & 4
for vendor_id in 1 2 4; do
    vendor_id_file="${datetime}-${vendor_id}.0.csv"     #create specified output file for the vendor id 
    grep "^${vendor_id}\.0," "$taxi_dataset" >> "$vendor_id_file"   #save specified vendor ID lines to files
    echo "$vendor_id_file" >> .gitignore    #add the theee files, based on vendor_id to gitignore
done   #loop done

#iterate for loop for ID's 1, 2 & 4
for vendor_id in 1 2 4; do
    vendor_id_file="${datetime}-${vendor_id}.0.csv"    #create specified output file for the vendor id 
    wc "$vendor_id_file" >> ws4.txt  #get the word count of specified file and store it in ws4.txt
done  #end loop

echo ".gitignore files:" >> ws4.txt  
cat .gitignore >> ws4.txt     #add gitignore files to ws4



