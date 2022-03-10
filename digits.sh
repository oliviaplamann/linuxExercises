#!/bin/bash

pattern="([0-1]){4}"
nums=0

for i in $(seq 1000 2000)
do
    if [[ $i =~ $pattern ]]
    then
       nums=$(($nums + $i))
    else
	continue
    fi
    
done

echo $nums
	   
	  
    
