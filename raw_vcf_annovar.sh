#!/bin/bash
# GATK=/opt/seqtools/gatk/gatk
# GATK_options="-XX:ParallelGCThreads=1"

# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I ./QW1436_combined.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/Exome_v1_Targets_Standard.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ./QW1436_combined.g.vcf
for i in *g.vcf;do
java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
        -T GenotypeGVCFs \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -V ./$i \
        -o ../$i.raw.vcf
table_annovar.pl  ../$i.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out  ../$i.raw.vcf.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180326,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput
done