#PBS -q tiny
#PBS -l nodes=1:ppn=1
#PBS -l mem=1gb
#PBS -S /bin/bash
#PBS -N test
#PBS -j oe
#PBS -o LOG_test




source /home/kn/kn_kn/kn_pop524719/.bashrc
conda activate shotgun
cd $hb/fastp

#rm -f *.sai
#rm -f *.bwt
#rm -f *.rsai
rm -f *.rbwt

# extact sequences from fastq files
#awk '(NR-2) % 4 == 0' fastp/AVXF-1-30.sga4.filter.pass.fa |sort | uniq -u > uniq.AVXF-1-30.sga4.filter.pass.fa
