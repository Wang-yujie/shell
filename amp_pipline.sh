#!/bin/bash
#####Usage: sh /home/SC/script_hub/common/amp_pipline.sh bed task_num locate（文件夹绝对路径） #bed标准格式：50gene brca PPGL tp53 ET（大panel） et（小panel） chrMT（线粒体） EGFR CYP21A2(真基因) CYP21A1P（假基因）

date_start=$(date +%s);

rename _001.fastq.gz .fastq.gz *;

if [ "$1" = "brca" ];then
    for file in $3/*.fastq.gz; do
        base_file=`basename $file`;
        suffix_name="$(cut -d'_' -f2 <<<"$base_file")";
        del_name="$(cut -d'.' -f1 <<<"$suffix_name")";
        rename "_${del_name}_" "_" $file;
    done;

    a=(`cat /home/SC/script_hub/amp/BRCA_R`)
    b=(`cat /home/SC/script_hub/amp/BRCA_F`)

    for file in $3/*R1.fastq.gz;do
        file_name=`basename $file`;
        file_mod="$(cut -d'_' -f1 <<<"$file_name")";
        for (( i = 0; i < ${#a[@]}; i++));do
            nohup cutadapt -g ${b[$i]} -G ${a[$i]} --discard-untrimmed -m 110 -M 135 -o $3/${b[$i]}_${file_mod}_R1.cut.fastq -p $3/${b[$i]}_${file_mod}_R2.cut.fastq $3/${file_mod}_R1.fastq.gz $3/${file_mod}_R2.fastq.gz &
        done;
        wait;
        cat $3/*_${file_mod}_R1.cut.fastq > $3/${file_mod}_R1.cut.fastq1
        cat $3/*_${file_mod}_R2.cut.fastq > $3/${file_mod}_R2.cut.fastq1
        rm $3/*${file_mod}_R1.cut.fastq
        rm $3/*${file_mod}_R2.cut.fastq
        wait;
    done;
    wait;
    rename .fastq.gz .fastq.gz.raw $3/*.fastq.gz;
    rename .cut.fastq1 .fastq $3/*.cut.fastq1;
    gzip $3/*.fastq;
fi

# start to screening raw data and output g.vcf
python /home/SC/script_hub/common/screening.py -b $1 -t $2 -f $3;
wait;

for i in $3/results/RAW_VCF/*raw.vcf;do
    i=`basename $i`;
    i_name="$(cut -d'.' -f1 <<<"$i")";
    if [ "$1" = "50gene" ]||[ "$1" = "brca" ];then
        perl /home/SC/script_hub/amp/variant_effect_predictor.pl -i $3/results/RAW_VCF/$i -o $3/results/$i_name.vep.anno --species homo_sapiens --assembly GRCh37 --plugin CSN --tab --cache --dir /home/xiaoliang.tian/.vep --fasta /home/xiaoliang.tian/.vep/homo_sapiens/89_GRCh37/Homo_sapiens.GRCh37.75.dna.primary_assembly.fa --offline --db_version 89 --appris --biotype --check_existing --hgvs --numbers --plugin ExAC,/home/xiaoliang.tian/.vep/ExAC.r0.3.1.sites.vep.vcf.gz --polyphen b --protein --pubmed --regulatory --sift b --symbol --tsl --uniprot --force_overwrite --refseq;
        wait;
        python /home/SC/script_hub/amp/vep_2_final.py -r $i_name.raw.vcf -v $i_name.vep.anno -d $3 -t $1
    else
        table_annovar.pl  $3/results/RAW_VCF/$i /opt/seqtools/annovar/humandb -buildver hg19 -out  $3/results/$i_name.anno -remove -protocol refGene,1000g2015aug_all,1000g2015aug_eas,dbscsnv11,cosmic70,clinvar_20180429,avsnp150,exac03,esp6500siv2_all,esp6500siv2_ea,dbnsfp33a -operation g,f,f,f,f,f,f,f,f,f,f -nastring . -vcfinput
    fi
done;

echo "---$3 process done---";
date_end=$(date +%s);
echo "pipline运行了：$((date_end-date_start))秒";

now_date=`date "+%Y%m%d"`;
echo -e "结果路径：$3/results \n ----------------------------------------------------------------- \n 本邮件由系统自动发送，请勿回复！如有问题请联系相关负责人。" | mail -s "$now_date-$1项目分析完成" -c yujie.wang@we-health.vip,xiaoliang.tian@we-health.vip xinchen.pan@we-health.vip



FileNotFoundError: [Errno 2] No such file or directory: '/mnt/workshop/SC/project/50gene/180607_xxs_180605_NB502022_0032_AH3M23AFXY/results/RAWVCF/50G-5012_S13.raw.vcf'
