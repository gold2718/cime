#!/usr/bin/perl
use strict;
my @dims= qw(18 36);
my $ndims = $#dims+1;
my $nprocs = 4;

print "version 2001 npes $nprocs ndims $ndims \n";

my $size=1;
foreach(@dims){
    $size *= $_;
    print "$_ ";
}
print "\n";
my $prevval = 0;
for(my $i=0;$i<$nprocs;$i++){
    my $lsize = int($size/$nprocs);
    my $remainder = $size - $lsize*$nprocs;
    $lsize++ if($remainder > $i) ;
    print "$i $lsize\n";
    my $j;
    for( $j=$prevval; $j<$prevval+$lsize;$j++){
	print "$j ";
    }
    $prevval = $j;
    print "\n";
}
