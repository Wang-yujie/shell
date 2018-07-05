#!/bin/bash
<<BLOCK
md5sum $3/$1_R1.fastq.gz >> $4/$1_R1.txt
md5sum $3/$1_R2.fastq.gz >> $4/$1_R2.txt
fastqc -o $5 -noextract -f fastq $3/$1_R1.fastq.gz $3/$1_R2.fastq.gz 2>$6/$1.fastqc.log
cutadapt -b AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC -B AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o $4/$1_R1.cut.fastq.gz -p $4/$1_R2.cut.fastq.gz $3/$1_R1.fastq.gz $3/$1_R2.fastq.gz 2> $6/$1.cutadapt.log
bwa mem -t 8 -R "@RG\tID:$1\tLB:$1\tSM:$1\tPL:illumina" $2/ucsc.hg19.fasta $4/$1_R1.cut.fastq.gz $4/$1_R2.cut.fastq.gz | samtools view -bS - > $4/$1.bam 2>$6/$1.aln.log
samtools sort -o $4/$1.sorted.bam $4/$1.bam 2>$6/$1.sort.log
java -XX:ParallelGCThreads=1 -jar /opt/seqtools/picard2.5/picard.jar MarkDuplicates I=$4/$1.sorted.bam O=$4/$1.dedup.sorted.bam M=$4/$1.metrics REMOVE_DUPLICATES=true AS=true 2>$6/$1.rmdup.log
samtools flagstat $4/$1.bam > $4/$1.mapstats
samtools index $4/$1.dedup.sorted.bam

samtools depth -d 1000000 $4/$1.dedup.sorted.bam > $4/$1.dedup.sorted.depth
BLOCK
perl /mnt/workshop/SC/pipeline/tools/depth_filter.pl -i $4/$1.dedup.sorted.depth -o $4/WES/$1.dedup.sorted.depth.target.txt -b /opt/seqtools/bed/SeqCap_EZ_Exome_v3_capture.bed
# perl /mnt/workshop/SC/pipeline/tools/depth_filter.pl -i $4/$1.dedup.sorted.depth -o $4/WES/$1.dedup.sorted.depth.on_and_neartarget.txt -b /opt/seqtools/bed/PPGL_targets_on_near_100bp.bed
# awk '{sum+=$3} END {print "Sum = ", sum}' $4/$1.dedup.sorted.depth > $4/$1.dedup.sorted.depth.sum.depth
perl /mnt/workshop/SC/pipeline/tools/my-script/lv.pl  $4/$1.dedup.sorted.depth.sum.depth $4/WES/$1.dedup.sorted.depth.target.txt $1.on > $4/WES/$1.ontarget
# perl /mnt/workshop/SC/pipeline/tools/my-script/lv.pl  $4/$1.dedup.sorted.depth.sum.depth $4/$1.dedup.sorted.depth.on_and_neartarget.txt $1.on_and_near > $4/$1.on_neartarget
# cat  $4/$1.dedup.sorted.depth.target.txt >> all.target.txt
# cat $4/$1.ontarget $4/$1.on_neartarget >> all.target

<<BLOCK
        -T RealignerTargetCreator \
java -jar /opt/seqtools/GenomeAnalysisTK.jar \
        -R $2 \
        -I $4/$1.dedup.sorted.bam \
        -o $4/$1.intervals \
        -known /mnt/gatk/hg19/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf \
        -known /mnt/gatk/hg19/1000G_phase1.indels.hg19.sites.vcf

java -jar /opt/seqtools/GenomeAnalysisTK.jar \
        -T IndelRealigner \
        -R $2 \
        -targetIntervals $4/$1.intervals \
        -I $4/$1.dedup.sorted.bam \
        -o $4/$1.realn.dedup.sorted.bam \
        -known /mnt/gatk/hg19/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf \
        -known /mnt/gatk/hg19/1000G_phase1.indels.hg19.sites.vcf




java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
	-T BaseRecalibrator \
	-R $2/ucsc.hg19.fasta \
	-I $4/$1.dedup.sorted.bam \
	-o $4/$1.recal_1.grp \
	-knownSites $2/dbsnp_138.hg19.vcf \
	-knownSites $2/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf \
	-knownSites $2/1000G_phase1.indels.hg19.sites.vcf \
	-knownSites $2/1000G_phase1.snps.high_confidence.hg19.sites.vcf 2>$6/$1.recal_1.log


java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
	-T PrintReads \
	-R $2/ucsc.hg19.fasta \
	-I $4/$1.dedup.sorted.bam \
	-BQSR $4/$1.recal_1.grp \
	-o $4/$1.recal.dedup.sorted.bam 2>$6/$1.recal_print.log

java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
        -T HaplotypeCaller \
        -R $2/ucsc.hg19.fasta \
        -I $4/$1.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/$7 \
	-ip 100 \
        -ERC GVCF \
        -o $4/$1.g.vcf 2>$6/$1.call_gvcf.log

