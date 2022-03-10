#!/bin/bash
mkdir ./five

num_dir=1

while [[ ($num_dir -le 5) ]]
do
    mkdir ./five/dir$num_dir

    num_file=1

    while [[ ($num_file -le 4) ]]
    do
	echo $num_file > ./five/dir$num_dir/file$num_file
	for i in $(seq $(($num_file-1)))
		 do
		     echo $num_file >> ./five/dir$num_dir/file$num_file
		 done 
	num_file=$(($num_file + 1))
    done
    
    num_dir=$(($num_dir + 1))
done
