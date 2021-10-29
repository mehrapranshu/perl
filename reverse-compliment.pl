#!/usr/bin/perl -w
#calculating the reverse compliment of the strand

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
	print "\nERROR!!Please check your DNA sequence that you have input.\n";
}else{ 
	#reverse compliment
	$revcom = reverse $DNA;
	$revcom =~ tr/ACGTacgt/TGCAtgca/;
	print "Here is the reverse complement DNA:\n";
	print $revcom, "\n\n";
}

exit;
