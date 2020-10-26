Script to trim adapters from fastq files with Trimmomatic and assessment with FastQC.

1)PRE-PROCESSING 

1.1) Create folders:

./script -- containing the content of this repository 

./data -- containing the fastq.gz sequences to analyze and the adapters sequences.

Example of sequences:

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7035_TAAGGCGA_L001_R1_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7035_TAAGGCGA_L001_R2_001.fastq.gz

./data/adapters -- https://github.com/timflutre/trimmomatic/tree/master/adapters

./analysis -- it will contain the result of the analysis 


2)RUNNING PIPELINE

2.1) From command-line

bash ./adapters_trim.sh NIST7035_TAAGGCGA_L001_R1_001 NIST7035_TAAGGCGA_L001_R2_001

2.2) Using PBS

> qsub adapters_trim_job 
