#PBS -q short
#PBS -l nodes=1:ppn=25
#PBS -l mem=32gb
#PBS -S /bin/bash
#PBS -N diamond
#PBS -j oe


source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $hb/diamond

conda activate diamond
# map against annotree db
diamond blastx -p 25 -q $hb/MAG/spades/meta/scaffolds.fasta -d $db/diamond/annotree -f 100 -o out.annotree.daa --long-reads --very-sensitive --memory-limit 32G

# map against gtdb protein db
diamond blastx -p 25 -q $hb/MAG/spades/meta/scaffolds.fasta -d $db/diamond/gtdb207_proteins -f 100 --long-reads -o out.gtdb207.daa --long-reads --very-sensitive --memory-limit 32G

# map against ncbi nr
diamond blastx -p 25 -q $hb/MAG/spades/meta/test/scaffolds.fasta -d $db/diamond/nr_20230324 -f 100 -o test/out.nr.daa --long-reads --very-sensitive --memory-limit 64G

