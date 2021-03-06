#!/usr/bin/perl -w
#This perl program takes the DNA sequnece as the input and prints out the frequency of the N bases.

#User input
print "\nEnter the DNA sequence:\n";

$dna = <STDIN>;
chomp $dna;
$dna = uc($dna);

#defined variables corresponding to the N bases 
$a = 0; $t = 0; $g = 0; $c = 0;

$a = ($dna =~tr/Aa//);
$t = ($dna =~tr/Tt//);
$g = ($dna =~tr/Gg//);
$c = ($dna =~tr/Cc//);

#calculating the length of the DNA, Number of N bases and non-bases (anything apart from A,T,G,C)
$length = length($dna);
$basecount = ($dna =~ tr/ATGCatgc//);
$nonbase = $length - $basecount;

#printing the frequnecy tables
print "\n\t_________________________________\n";
print "\t| Total Length		| $length	|\n";
print "\t|_______________________________|\n";
print "\t| Nucleotide Bases	| $basecount	|\n";
print "\t|_______________________________|\n";
print "\t| Other Bases		| $nonbase	|\n";
print "\t---------------------------------\n";

print "\n\t___________________\n";
print "\t| FREQUENCY TABLE |\n";
print "\t|_________________|\n";
print "\t| A	 | $a	  |\n";
print "\t|_________________|\n";
print "\t| T	 | $t	  |\n";
print "\t|_________________|\n";
print "\t| G	 | $g	  |\n";
print "\t|_________________|\n";
print "\t| C	 | $c	  |\n";
print "\t-------------------\n\n";

exit;
