#PBS -q short
#PBS -l nodes=1:ppn=14
#PBS -l mem=16gb
#PBS -S /bin/bash
#PBS -N adpater_removal
#PBS -j oe
#PBS -o LOG_adp_rm


source /home/kn/kn_kn/kn_pop524719/.bashrc
mkdir -p $yw/HIBO_shotgun/adapterremoval
cd $yw/HIBO_shotgun/adapterremoval

conda activate shotgun

AdapterRemoval --threads 14 --file1 ${loc}_R1.fastq.gz  --file2 ${loc}_R2.fastq.gz --mm 3 --minlength 30 \
 --basename $libid --trimns --trimqualities --minquality 30 \
 --adapter1 GATCGGAAGAGCACACGTCTGAACTCCAGTCAC \
 --adapter2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
 --collapse

cat ${libid}.collapsed ${libid}.collapsed.truncated > ${libid}.merged.fq
