/opt/seqtools/gatk/gatk4/gatk Mutect2 \
   -R /opt/seqtools/gatk/ucsc.hg19.fasta \
   -I 50G-3808_S1.recal.sorted.bam \
    -tumor 50G-3808_S1 \
   -L /opt/seqtools/bed/50gene.intervals \
   -O 50G-3808_S1.recal.sorted.bam.vcf
