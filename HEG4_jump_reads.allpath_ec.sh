#!/bin/sh
#PBS -l nodes=1:ppn=1
#PBS -l mem=100gb
#PBS -l walltime=300:00:00


# ALLPATHS-LG needs 100 MB of stack space.  In 'csh' run 'limit stacksize 100000'.
ulimit -s 100000



export PATH=/rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin:$PATH
export LD_LIBRARY_PATH=/opt/gcc/4.7.2/lib64

#module load gcc/4.7.2

cd /bigdata/cjinfeng/00.RD/fastq/errorcorrection/allpathlg/HEG4

date

perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads_Assembly_MatePair.pl /rhome/cjinfeng/BigData/00.RD/ALLPATH_LG/HEG4_RAW.3/data/run

date
echo "Done"

