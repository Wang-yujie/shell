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
#for i in *g.vcf;do echo $i;done >name

java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
        -T GenotypeGVCFs \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -V ./PPGL-100_combined.g.vcf \
        -V ./PPGL-99_combined.g.vcf \
        -V ./PPGL-T12_combined.g.vcf \
        -V ./PPGL-150.g.vcf \
        -V ./PPGL-151.g.vcf \
        -V ./PPGL-154.g.vcf \
        -V ./PPGL-155.g.vcf \
        -V ./PPGL-177.g.vcf \
        -V ./PPGL-178.g.vcf \
        -V ./PPGL-A02.g.vcf \
        -V ./PPGL-A03.g.vcf \
        -V ./PPGL-A04.g.vcf \
        -V ./PPGL-A05.g.vcf \
        -V ./PPGL-A07.g.vcf \
        -V ./PPGL-A10.g.vcf \
        -V ./PPGL-A11.g.vcf \
        -V ./PPGL-A12.g.vcf \
        -o ./hebing.raw.vcf

table_annovar.pl  ./hebing.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out  ./hebing.raw.vcf.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180326,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput