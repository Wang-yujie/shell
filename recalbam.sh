
java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
        -T BaseRecalibrator \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I ./$1.dedup.sorted.bam \
        -o ./$1.recal_1.grp \
        -L /opt/seqtools/bed/IDT_xGen_CNV_Core.bed \
        -knownSites /opt/seqtools/gatk/dbsnp_138.hg19.vcf \
        -knownSites /opt/seqtools/gatk/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf \
        -knownSites /opt/seqtools/gatk/1000G_phase1.indels.hg19.sites.vcf \
        -knownSites /opt/seqtools/gatk//1000G_phase1.snps.high_confidence.hg19.sites.vcf 2>./$1.recal_1.log

java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
        -T PrintReads \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I ./$1.dedup.sorted.bam \
        -BQSR ./$1.recal_1.grp \
        -L /opt/seqtools/bed/IDT_xGen_CNV_Core.bed \
        -o ./$1.recal.dedup.sorted.bam 2>./$1.recal_print.log
