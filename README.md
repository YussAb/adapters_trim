Script to trim adapters from fastq files with Trimmomatic and assessment with FastQC.

1)PRE-PROCESSING 

*Create folders:

./script -- containing the content of this repository 

./data -- containing the fastq.gz sequences to analyze and the adapters sequences.
Example of sequences:

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7035_TAAGGCGA_L001_R1_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7035_TAAGGCGA_L001_R2_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7035_TAAGGCGA_L002_R1_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7035_TAAGGCGA_L002_R2_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7086_CGTACTAG_L001_R1_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7086_CGTACTAG_L001_R2_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7086_CGTACTAG_L002_R1_001.fastq.gz

wget ftp://ftp-trace.ncbi.nih.gov/ReferenceSamples/giab/data/NA12878/Garvan_NA12878_HG001_HiSeq_Exome/NIST7086_CGTACTAG_L002_R2_001.fastq.gz

./data/adapters -- https://github.com/timflutre/trimmomatic/tree/master/adapters

./analysis -- it will contain the result of the analysis 


2)RUNNING PIPELINE


