echo "ec for HEG4_500"
perl presubmit.pl --dir /rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_0_500bp --insert 500 --sd 150 --cpu 1 --mem 50 > HEG4_500.allpath_ec.sh
qsub -q js HEG4_500.allpath_ec.sh

echo "ec for HEG4_200"
perl presubmit.pl --dir /rhome/cjinfeng/BigData/00.RD/fastq/errorcorrection/soapec/HEG4_2_200bp --insert 200 --sd 100 --cpu 1 --mem 60 > HEG4_200.allpath_ec.sh
qsub -q js HEG4_200.allpath_ec.sh

echo "get ec read from allpath_lg assembly for jump reads"
qsub -q js HEG4_jump_reads.allpath_ec.sh

echo "can get ec read from allpath_lg assembly too, but need too much memoery to wait. We run presubmit.pl for these seperately"
qsub -q js HEG4_frag_reads.allpath_ec.sh

