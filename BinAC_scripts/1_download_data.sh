#PBS -q short
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:01:00
#PBS -l mem=1gb
#PBS -M yiwang@uni.kn
#PBS -S /bin/bash
#PBS -N data_download
#PBS -j oe
#PBS -o LOG

cd /beegfs/work/kn_pop524719/HIBO_shotgun
# download data
wget -r https://www.fasteris.com/private/AVXF/AVXF-20220614/data --user=yiwang@uni-konstanz.de --password=tw9kdub9 --no-parent --auth-no-challenge
