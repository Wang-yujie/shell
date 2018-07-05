#!usr/bin/bash
GATK=/opt/seqtools/gatk/gatk4/gatk
GATK_options="-XX:ParallelGCThreads=1"

# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F-1185F2_S46.recal.dedup.sorted.bam\
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1185F2.g.vcf 2>./F1185F2.call_gvcf.log


# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F-1225F_S53.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1225F.g.vcf 2>./F1225F.call_gvcf.log

# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F1225S_S56.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1225S.g.vcf 2>./F1225S.call_gvcf.log

# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F-1226F_S55.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1226F.g.vcf 2>./F1226F.call_gvcf.log

# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F1226S_S57.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1226S.g.vcf 2>./F1226S.call_gvcf.log
# nohup
# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F-1227F_S52.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1227F.g.vcf 2>./F1227F.call_gvcf.log
# &
# nohup
# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F1227S_S58.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1227S.g.vcf 2>./F1227S.call_gvcf.log
# &
# nohup
# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F-1228F_S54.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1228F.g.vcf 2>./F1228F.call_gvcf.log
# &
# nohup
# $GATK --java-options $GATK_options HaplotypeCaller \
#         -R /opt/seqtools/gatk/ucsc.hg19.fasta \
#         -I F1228S_S59.recal.dedup.sorted.bam \
#         -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
#         -ip 100 \
#         -ERC GVCF \
#         -O ../GVCF/F1228S.g.vcf 2>./F1228S.call_gvcf.log
# &
$GATK --java-options $GATK_options HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I F-1229F_S45.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
        -ip 100 \
        -ERC GVCF \
        -O ../GVCF/F1229F.g.vcf 2>./F1229F.call_gvcf.log

$GATK --java-options $GATK_options HaplotypeCaller \
            -R /opt/seqtools/gatk/ucsc.hg19.fasta \
            -I F1229S_S60.recal.dedup.sorted.bam \
            -L /opt/seqtools/bed/inherited-diseases-panel-probes.bed \
            -ip 100 \
            -ERC GVCF \
            -O ../GVCF/F1229S.g.vcf 2>./F1229S.call_gvcf.log