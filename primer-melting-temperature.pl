#!/usr/bin/perl -w
#This program calculates the the melting temperature of the primer sequence

#user input
print "\nEnter the primer sequence:\n";
$dna = <>;
chomp $dna;

#defined variables corresponding to the N bases 
$a = 0; $t = 0; $g = 0; $c = 0;

$a = ($dna =~tr/Aa//);
$t = ($dna =~tr/Tt//);
$g = ($dna =~tr/Gg//);
$c = ($dna =~tr/Cc//);

#calculating the length of the DNA, Number of N bases and non-bases (anything apart from A,T,G,C)
$length = length($dna);
$basecount = ($dna =~ tr/ATGCatgc//);
$nonbase = ($length) - $basecount;

print "\nTotal number of nucleotide bases = $basecount\n";
print "\nNumber of other bases = $nonbase\n";

print "\nFrequency of nucleotides\n";
print "A=$a T=$t G=$g C=$c\n";

#using the melting temperature formula
if ($length < 14){
	$tm = ($a + $t)*2 + ($g + $c)*4;
	print "\nThe melting temperature of the given sequence = ";
	printf ("%.2f",$tm);
	print " degree Celsius.\n\n";
}elsif ($length > 13) { 
	$tm = 64.9 + 41 *(($g + $c - 16.4)/($a + $t + $g + $c));
	printf "\nThe melting temperature of the given sequence = ";
	printf ("%.2f",$tm);
	print " degree Celsius.\n\n";	
}

exit;
