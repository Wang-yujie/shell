#!/bin/bash
/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 HaplotypeCaller -R /opt/seqtools/gatk/ucsc.hg19.fasta -I ./F-1351S_S15.recal.dedup.sorted.bam -L /opt/seqtools/bed/inherited-diseases-panel-probes.intervals -ip 100 -ERC GVCF -O F-1309F.g.vcf
