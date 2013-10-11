#!/bin/sh
#PBS -l nodes=1:ppn=1
#PBS -l mem=72gb
#PBS -l walltime=300:00:00


# ALLPATHS-LG needs 100 MB of stack space.  In 'csh' run 'limit stacksize 100000'.
ulimit -s 100000



export PATH=/rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin:$PATH
export LD_LIBRARY_PATH=/opt/gcc/4.7.2/lib64

#module load gcc/4.7.2

cd /bigdata/cjinfeng/00.RD/fastq/errorcorrection/allpathlg/HEG4

date

perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=60G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.1_p1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.1_p2.fq PAIRED_SEP=200 PAIRED_STDEV=100 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_2_200bp.HEG4_2.1_ec > HEG4_2_200bp.HEG4_2.1_ec.log 2> HEG4_2_200bp.HEG4_2.1_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=60G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.2_p1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.2_p2.fq PAIRED_SEP=200 PAIRED_STDEV=100 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_2_200bp.HEG4_2.2_ec > HEG4_2_200bp.HEG4_2.2_ec.log 2> HEG4_2_200bp.HEG4_2.2_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=60G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.3_p1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.3_p2.fq PAIRED_SEP=200 PAIRED_STDEV=100 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_2_200bp.HEG4_2.3_ec > HEG4_2_200bp.HEG4_2.3_ec.log 2> HEG4_2_200bp.HEG4_2.3_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=60G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.4_p1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp/HEG4_2.4_p2.fq PAIRED_SEP=200 PAIRED_STDEV=100 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_2_200bp.HEG4_2.4_ec > HEG4_2_200bp.HEG4_2.4_ec.log 2> HEG4_2_200bp.HEG4_2.4_ec.log2

date
echo "Done"

