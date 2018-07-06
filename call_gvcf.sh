#!usr/bin/bash
GATK=/opt/seqtools/gatk/gatk4/gatk
GATK_options="-XX:ParallelGCThreads=1"
nohup
$GATK --java-options $GATK_options HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I F-1227F_S52.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
        -ip 100 \
        -ERC GVCF \
        -O ../GVCF/F1227F.g.vcf 2>./F1227F.call_gvcf.log
&
nohup
$GATK --java-options $GATK_options HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I F1227S_S58.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
        -ip 100 \
        -ERC GVCF \
        -O ../GVCF/F1227S.g.vcf 2>./F1227S.call_gvcf.log
&
nohup
$GATK --java-options $GATK_options HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I F-1228F_S54.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
        -ip 100 \
        -ERC GVCF \
        -O ../GVCF/F1228F.g.vcf 2>./F1228F.call_gvcf.log
&
nohup
$GATK --java-options $GATK_options HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I F1228S_S59.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
        -ip 100 \
        -ERC GVCF \
        -O ../GVCF/F1228S.g.vcf 2>./F1228S.call_gvcf.log

/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 HaplotypeCaller -R /opt/seqtools/gatk/ucsc.hg19.fasta -I ./F-1351S_S15.recal.dedup.sorted.bam -L /opt/seqtools/bed/inherited-diseases-panel-probes.intervals -ip 100 -ERC GVCF -O F-1309F.g.vcf
