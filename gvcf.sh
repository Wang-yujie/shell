# java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
#         -T PrintReads \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/bam/$1.dedup.sorted.bam \
#         -BQSR /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/bam/$1.recal_1.grp \
#         -o /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/recal_bam/$1.recal.dedup.sorted.bam 2>./$1.recal_print.log

# java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
#     -T HaplotypeCaller \
#     -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#     -I /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/recal_bam/$1.recal.dedup.sorted.bam \
#     -L /opt/seqtools/bed/Exome_v1_Targets_Standard.intervals \
#     -ip 100 \
#     -ERC GVCF \
#     -o ./$1.g.vcf 2>./$1.call_gvcf.log

java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
    -T GenotypeGVCFs \
    -R /opt/seqtools/gatk/ucsc.hg19.fasta \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1119F_S1.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1119S.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1120F.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1120S.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1120S.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1121F.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1121S_S6.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1122F_S7.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1122S.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1123F.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1123S_S10.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1124F.g.vcf \
    -V /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/GVCF/F1124S.g.vcf \
    -o /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/Fhebing.fastq.gz.raw.vcf


table_annovar.pl /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/Fhebing.fastq.gz.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out /mnt/workshop/SC/project/paternity/180329-pxc-180328_NB502022_0017_AHTKVGAFXX_gatk3/result/Fhebing.fastq.gz.raw.vcf.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20170905,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput

