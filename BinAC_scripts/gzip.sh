#PBS -q short
#PBS -l nodes=1:ppn=14
#PBS -l mem=8gb
#PBS -S /bin/bash
#PBS -N gzip
#PBS -j oe
#PBS -o log_gzip


source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $yw/HIBO_shotgun/adapterremoval

CORES=$(grep -c '^processor' /proc/cpuinfo)
find /source -type f -print0 | xargs -0 -n 1 -P $CORES gzip -9 *
