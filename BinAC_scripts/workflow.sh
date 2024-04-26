### 0: install conda

wget "https://repo.anaconda.com/miniconda/Miniconda3-py39_4.12.0-Linux-x86_64.sh"
bash Miniconda3-py39_4.12.0-Linux-x86_64.sh
 
# create new clean conda environment for the HIBO shotgun project:
	conda create --name shotgun


### 0.1 setup conda env

conda activate shotgun

# install packages
conda install -c bioconda adapterremoval
#conda install -c bioconda fastq-tools
#conda install -c bioconda sga
conda install -c bioconda fastp
conda install -c bioconda prinseq-plus-plus



### 1: download data
see 1_download_data.sh


### 2: adapter removal

see file 1_adapterremoval.sh

### 3: sga








