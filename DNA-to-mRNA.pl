#!/usr/bin/perl -w
#This perl program tanscribes DNA into mRNA

#user input
print "\nEnter your DNA sequence:\t";
chomp ($DNA = <>);
$DNA = uc ($DNA);

print "\nHere is the starting DNA;\n";
print $DNA, "\n\n";

print "\n\nTotal length of given DNA sequence :" ,length $DNA;
$basecount = ($DNA =~ tr/ATGCatgc//);
print "\nTotal number of nucleotide bases = $basecount";

#no. of other bases
$nonbase = (length $DNA) - $basecount;
print "\nNumber of other bases = $nonbase\n\n";

#throw error if non-bases are present
if ($nonbase >0) {
	print "\nPlease check your DNA sequence that you have input.\n";
}else{ 
	#transcribe the dna to rna by susbsituting all T's with U's.
	$RNA = $DNA;
	$RNA =~ s/T/U/g;

	#print the RNA
	print "Here is the result of transcribing the DNA to RNA:\n";
	print $RNA ,"\n\n";
}
exit;
