# #!/bin/bash
# GATK=/opt/seqtools/gatk/gatk4/gatk
# GATK_options="-XX:ParallelGCThreads=1"


/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/recal_bam/ppgl-66_combined.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/PPGL.intervals \
        -ip 100 \
        -ERC GVCF \
        --minimum-mapping-quality 50 \
        -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-66_combined.g.vcf

/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 GenotypeGVCFs \
            -R /opt/seqtools/gatk/ucsc.hg19.fasta \
            -V /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-66_combined.g.vcf \
            -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-66_combined.raw.vcf

table_annovar.pl  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-66_combined.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/ppgl-66_combined.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180326,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput


/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/recal_bam/ppgl-67_combined.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/PPGL.intervals \
        -ip 100 \
        -ERC GVCF \
        --minimum-mapping-quality 50 \
        -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-67_combined.g.vcf

/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 GenotypeGVCFs \
            -R /opt/seqtools/gatk/ucsc.hg19.fasta \
            -V /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-67_combined.g.vcf \
            -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-67_combined.raw.vcf

table_annovar.pl  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-67_combined.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/ppgl-67_combined.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180326,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput


/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/recal_bam/ppgl-68_combined.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/PPGL.intervals \
        -ip 100 \
        -ERC GVCF \
        --minimum-mapping-quality 50 \
        -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-68_combined.g.vcf

/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 GenotypeGVCFs \
            -R /opt/seqtools/gatk/ucsc.hg19.fasta \
            -V /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-68_combined.g.vcf \
            -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-68_combined.raw.vcf

table_annovar.pl  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-68_combined.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/ppgl-68_combined.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180326,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput


/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 HaplotypeCaller \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -I /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/recal_bam/ppgl-69_combined.recal.dedup.sorted.bam \
        -L /opt/seqtools/bed/PPGL.intervals \
        -ip 100 \
        -ERC GVCF \
        --minimum-mapping-quality 50 \
        -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-69_combined.g.vcf

/opt/seqtools/gatk/gatk4/gatk --java-options -XX:ParallelGCThreads=1 GenotypeGVCFs \
            -R /opt/seqtools/gatk/ucsc.hg19.fasta \
            -V /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/GVCF/ppgl-69_combined.g.vcf \
            -O /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-69_combined.raw.vcf

table_annovar.pl  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/RAW_VCF/ppgl-69_combined.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out  /mnt/workshop/SC/project/PPGL/180503_wyj_180124_N05727_LWT_80-130329507_SEQ/results/ppgl-69_combined.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180326,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput


java -XX:ParallelGCThreads=1 -jar /opt/seqtools/gatk/GenomeAnalysisTK.jar \
        -T GenotypeGVCFs \
        -R /opt/seqtools/gatk/ucsc.hg19.fasta \
        -V /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-1161S_S19.g.vcf \
        -V /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-1166F_S10.g.vcf \
        -V /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-1166S_S23.g.vcf \
        -V /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-1169S_S25.g.vcf \
        -V /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-1171F_S13.g.vcf \
        -V /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-1172F_S14.g.vcf \
        -o /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-test.raw.vcf

table_annovar.pl  /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/GVCF/F-test.raw.vcf /opt/seqtools/annovar/humandb -buildver hg19 -out  /mnt/workshop/SC/project/paternity/180504_wyj_180503_NB502022_0022_AHVKN3AFXX2/results/F-test.raw.vcf.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180326,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput

awk '($1 != "chrX" && $1 != "chrY" && $1 != "chrMT"){print $0 > "/results/.filtered.txt" }' $file