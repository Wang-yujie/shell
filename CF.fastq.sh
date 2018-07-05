#!/bin/bash
a=(`cat R1.txt`)
b=(`cat R2.txt`)

# for (( i = 0; i < 4; i++));do
# 	nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
for (( i = 4; i < 8; i++));do
	nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 8; i < 12; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 12; i < 16; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 16; i < 20; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 20; i < 24; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 24; i < 28; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 28; i < 32; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 32; i < 36; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 36; i < 40; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 40; i < 44; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
for (( i = 44; i < 48; i++));do
    nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
done;
wait;
# for (( i = 48; i < 52; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 52; i < 56; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 56; i < 60; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 60; i < 64; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 64; i < 68; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 68; i < 72; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 72; i < 76; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 76; i < 80; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 80; i < 84; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 84; i < 88; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 88; i < 92; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 92; i < 96; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
# for (( i = 96; i < 100; i++));do
#     nohup  perl /mnt/workshop/SC/pipeline/tools/double_barcode/double_barcode.pl  ${a[$i]}  ${b[$i]} ${a[$i]}.CF ${b[$i]}.CF &
# done;
# wait;
rename fastq fastq1 *;
rename CF CF.fastq *;
for i in *fastq;do gzip $i;done