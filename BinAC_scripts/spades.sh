#PBS -q smp
#PBS -l nodes=1:ppn=16
#PBS -l pmem=256gb
#PBS -S /bin/bash
#PBS -N spades
#PBS -j oe

source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $hb/MAG/spades

conda activate base

for file in $hb/fastp/*_R1.trimmed.paired.fastq.gz
do
lead=${file%_R1*}
libnum=${lead##*-}
spades_out=$hb/MAG/spades/meta/HB_$libnum

# run metaSPAdes
spades.py -t 16 -m 250 --meta --pe1-1 $file --pe1-2 ${lead}_R2.trimmed.paired.fastq.gz -o $spades_out
done



# run metaBAT2
#conda activate metabat
#metabat2 -i $spades_out/scaffolds.fasta -m 1500 -o $metabat/bins_dir/bin

