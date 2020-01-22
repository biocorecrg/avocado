######################################## DOWNLOAD FASTQC FILES FROM NCBI ####################################
docker run --rm -v "$(pwd)":/data -w /data inutano/sra-toolkit fasterq-dump -v SRR5514675
./fasterq-dump https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?cmd=dload&run_list=SRR5514674&format=fastq

######################################## QUALITY CHECK ######################################################
git clone https://github.com/s-andrews/FastQC.git
./fastqc

####################################### DOWNLOAD VITIS GENOME MIRDEEP DEPENDECIES ########################################
wget http://www.genoscope.cns.fr/externe/Download/Projets/Projet_ML/data/12X/assembly/scaffolds/masked/scaffolds.msk.fa # genome file
Bowtie
RNAFold
