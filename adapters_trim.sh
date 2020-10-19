#! bin/bash


WORK_DIR=/home2/yabili/germline/analysis
DATA_DIR=/home2/yabili/germline/data
fwd_read=$1
rws_read=$2

cd $WORK_DIR

echo "the current WORK_DIR is..." pwd
echo "*************************************************************************************"

#http://www.usadellab.org/cms/?page=trimmomatic
#http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

echo "Trimmomatic is starting .. "
echo "*************************************************************************************"

java -jar /apps/bio/trimmomatic/0.38/trimmomatic-0.38.jar PE -threads 16  -phred33  -trimlog log_trim \
 $DATA_DIR/$fwd_read.fastq \
 $DATA_DIR/$rws_read.fastq \
 $fwd_read.paired.fastq \
 $fwd_read.unpaired.fastq \
 $rws_read.paired.fastq  \
 $rws_read.unpaired.fastq\
 ILLUMINACLIP:$DATA_DIR/adapters/NexteraPE-PE.fa:2:30:10 SLIDINGWINDOW:4:15 MINLEN:20 LEADING:3 TRAILING:3 

#cd WORK_DIR
echo "The current WORK_DIR is" pwd
echo "*************************************************************************************"

echo "Creating fastqc folder..."
echo "*************************************************************************************"

if [[ -d $WORK_DIR/fastqc ]]; then
	echo "fastqc already existing" pwd
else
	mkdir $WORK_DIR/fastqc
	echo "fastqc folder created"
	pwd
fi

cd $WORK_DIR/fastqc

fastqc -o $WORK_DIR/fastqc -t 6 $DATA_DIR/$fwd_read.fastq  
#fastqc $DATA_DIR/$rws_read.fastq 
fastqc -o $WORK_DIR/fastqc -t 6 $WORK_DIR/$fwd_read.paired.fastq 
#fastqc $fwd_read.unpaired.fastq 
#fastqc $rws_read.paired.fastq  
#fastqc $rws_read.unpaired.fastq


