#PBS -q short
#PBS -l nodes=1:ppn=1
#PBS -l mem=8gb
#PBS -S /bin/bash
#PBS -N comm
#PBS -j oe
#PBS -o log_comm


source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $hb

file1='AVXF-1-10.sga4.filter.pass.fa'
file2='AVXF-1-10.sga4.filter.pass.fa'

# take every 4th line i.e. sequences and then sort
awk '(NR-2) % 4 == 0' adapterremoval/$file1 |sort | uniq -u > seq.A.$file1
awk '(NR-2) % 4 == 0' fastp/$file2 |sort | uniq -u > seq.F.$file2



# find lines only in file1 not in file2
comm -13 seq.A.$file1 seq.F.$file2 > comm_keptFastpnotAdprm_dust4.txt
comm -23 seq.A.$file1 seq.F.$file2 > comm_keptAdprmnotFastp_dust4.txt
