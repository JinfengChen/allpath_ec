#!/bin/sh
#PBS -l nodes=1:ppn=1
#PBS -l mem=60gb
#PBS -l walltime=300:00:00


# ALLPATHS-LG needs 100 MB of stack space.  In 'csh' run 'limit stacksize 100000'.
ulimit -s 100000



export PATH=/rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin:$PATH
export LD_LIBRARY_PATH=/opt/gcc/4.7.2/lib64

#module load gcc/4.7.2

cd /bigdata/cjinfeng/00.RD/fastq/errorcorrection/allpathlg/HEG4

date

perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=50G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC52_7_1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC52_7_2.fq PAIRED_SEP=500 PAIRED_STDEV=150 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_0_500bp.FC52_7_ec > HEG4_0_500bp.FC52_7_ec.log 2> HEG4_0_500bp.FC52_7_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=50G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC52_8_1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC52_8_2.fq PAIRED_SEP=500 PAIRED_STDEV=150 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_0_500bp.FC52_8_ec > HEG4_0_500bp.FC52_8_ec.log 2> HEG4_0_500bp.FC52_8_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=50G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC67_1_1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC67_1_2.fq PAIRED_SEP=500 PAIRED_STDEV=150 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_0_500bp.FC67_1_ec > HEG4_0_500bp.FC67_1_ec.log 2> HEG4_0_500bp.FC67_1_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=50G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC67_2_1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC67_2_2.fq PAIRED_SEP=500 PAIRED_STDEV=150 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_0_500bp.FC67_2_ec > HEG4_0_500bp.FC67_2_ec.log 2> HEG4_0_500bp.FC67_2_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=50G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC70_1_1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC70_1_2.fq PAIRED_SEP=500 PAIRED_STDEV=150 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_0_500bp.FC70_1_ec > HEG4_0_500bp.FC70_1_ec.log 2> HEG4_0_500bp.FC70_1_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=50G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC70_2_1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC70_2_2.fq PAIRED_SEP=500 PAIRED_STDEV=150 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_0_500bp.FC70_2_ec > HEG4_0_500bp.FC70_2_ec.log 2> HEG4_0_500bp.FC70_2_ec.log2
perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=50G PAIRED_READS_A_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC70_3_1.fq PAIRED_READS_B_IN=/rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp/FC70_3_2.fq PAIRED_SEP=500 PAIRED_STDEV=150 THREADS=1 PHRED_ENCODING=33 READS_OUT=HEG4_0_500bp.FC70_3_ec > HEG4_0_500bp.FC70_3_ec.log 2> HEG4_0_500bp.FC70_3_ec.log2

date
echo "Done"

