java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
-T GenotypeGVCFs \
-R /opt/seqtools/gatk/CYP21A/ucsc.hg19.chr6.fasta.CYP21A1P.fasta \
-V 5228-PF_PR_S12.g.vcf \
-V 5727-PF_PR_S10.g.vcf \
-V 5729-PF_PR_S13.g.vcf \
-V CYP21-5210.g.vcf \
-V CYP21-5210.g.vcf \
-V CYP21-5211.g.vcf \
-V CYP21-5212.g.vcf \
-V CYP21-5727.g.vcf \
-V CYP21-5728.g.vcf \
-V CYP21-5729.g.vcf \
-V CYP21-C3.g.vcf \
-V CYP21-C4.g.vcf \
-o combined.raw.vcf \