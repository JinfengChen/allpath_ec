#!/usr/bin/perl
use Getopt::Long;

GetOptions (\%opt,"dir:s","insert:s","sd:s","cpu:s","mem:s","help");


my $help=<<USAGE;
perl $0 --dir /rhome/cjinfeng/HEG4_cjinfeng/fastq/HEG4_1_3k --insert 2570 --sd 550
USAGE


if ($opt{help} or keys %opt < 1){
    print "$help\n";
    exit();
}

$opt{cpu} ||= 32;
$opt{mem} ||= 100;


##FC67_3_1.fq  FC67_3_2.fq  FC70_5_1.fq  FC70_5_2.fq
##HEG4_2.1_p1.fq HEG4_2.1_p2.fq
my @file=glob("$opt{dir}/*.fq");
my @prefix;
my @cmd;
foreach my $fq (@file){
   my @array=split("/",$fq);
   my $project=$array[$#array-1];
   if ($array[-1]=~/(.*)\_p*1\.fq/){
      my $pre=$1;
      my $read1=$array[-1]=~/p\d+/ ? "$opt{dir}/$pre\_p1.fq" : "$opt{dir}/$pre\_1.fq";
      my $read2=$array[-1]=~/p\d+/ ? "$opt{dir}/$pre\_p2.fq" : "$opt{dir}/$pre\_2.fq";
      my $out  ="$pre\_ec";
      my $temp="perl /rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin/ErrorCorrectReads.pl MAX_MEMORY_GB=$opt{mem}G PAIRED_READS_A_IN=".$read1." "."PAIRED_READS_B_IN=".$read2." PAIRED_SEP=$opt{insert} PAIRED_STDEV=$opt{sd} THREADS=$opt{cpu}"." PHRED_ENCODING=33 READS_OUT=".$project.".".$out." > ".$project.".".$out.".log 2> ".$project.".".$out.".log2";
      push @cmd, $temp;
   }
}

my $sh=join("\n",@cmd);
my $dir= `pwd`;
$opt{mem} += 0.2 * $opt{mem};

my $submit=<<SHELL;
#!/bin/sh
#PBS -l nodes=1:ppn=$opt{cpu}
#PBS -l mem=$opt{mem}gb
#PBS -l walltime=300:00:00


# ALLPATHS-LG needs 100 MB of stack space.  In 'csh' run 'limit stacksize 100000'.
ulimit -s 100000



export PATH=/rhome/cjinfeng/software/tools/ALLPATH_LG/ALLPATH_LG_45073/bin:\$PATH
export LD_LIBRARY_PATH=/opt/gcc/4.7.2/lib64

#module load gcc/4.7.2

cd $dir
date

$sh

date
echo "Done"
SHELL

print $submit,"\n";

########################
sub readtable
{
my ($file)=@_;
my %hash;
open IN, "$file" or die "$!";
while(<IN>){
    chomp $_;
    next if ($_=~/^$/);
    my @unit=split("\t",$_);
    $hash{$unit[0]}=1;
}
close IN;
return \%hash;
}
 
