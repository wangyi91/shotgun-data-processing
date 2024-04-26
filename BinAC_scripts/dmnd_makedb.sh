#PBS -q short
#PBS -l nodes=1:ppn=25
#PBS -l mem=32gb
#PBS -S /bin/bash
#PBS -N diamond
#PBS -j oe


source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $hb/diamond

conda activate diamond

# build db using ncbi
diamond makedb -p 20 --in /beegfs/work/kn_AG_Epp/databases/ncbi_nr/nr_20230324.gz \
 --taxonmap /beegfs/work/kn_AG_Epp/databases/ncbi_nr/prot.accession2taxid_20230324.gz \
 --taxonnodes /beegfs/work/kn_AG_Epp/databases/taxdump_230123/nodes.dmp \
 --taxonnames /beegfs/work/kn_AG_Epp/databases/taxdump_230123/names.dmp \
 -d nr_20230324

# build db using gtdb
diamond makedb -p 25 --in /beegfs/work/kn_AG_Epp/databases/gtdb/gtdb_to_taxdump/gtdb2dmnd_out/gtdb_all.faa \
 --taxonmap /beegfs/work/kn_AG_Epp/databases/gtdb/gtdb_to_taxdump/gtdb2dmnd_out/accession2taxid.tsv \
 --taxonnodes /beegfs/work/kn_AG_Epp/databases/gtdb/gtdb_to_taxdump/gtdb2dmnd_out/nodes.dmp \
 --taxonnames /beegfs/work/kn_AG_Epp/databases/gtdb/gtdb_to_taxdump/gtdb2dmnd_out/names.dmp \
 -d gtdb207_proteins

# build db using annotree
diamond makedb -p 25 --in /beegfs/work/kn_AG_Epp/databases/diamond/annotree.fasta.gz \
 -d annotree

# finally mv *.dmnd $db/diamond
