#!/bin/bash
a=(`cat R1.txt`)
b=(`cat R2.txt`)

for (( i = 0; i < ${#a[@]}; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;