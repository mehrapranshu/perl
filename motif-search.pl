#!/usr/bin/perl -w

#This program lets the user search for motif in a fasta file.
print "Please type the filename of the protein sequence data: ";

#taking user input for the file name (make sure the file is present in the same directory as the perl script, orelse provide the whole path of the file)
$proteinFileName = <>;
chomp $proteinFileName;

#throw error if the file name does not exist
unless (open(PROTEINFILE, $proteinFileName)) {
	print "Cannot open file \"$proteinFileName\"\n\n";
	exit;
}

@protein = <PROTEINFILE>;
close PROTEINFILE;

#ignoring the everything other than the sequence in the file
foreach $line (@protein){
		if ($line =~ /^\s*$/) { 
			next;
		}elsif($line =~ /^\s*#/) { 
			next;
		}elsif($line =~ /^>/) { 
			next;
		}else {
			$sequence .= $line; 
		}
	}
$sequence =~ s/\s//g;

print "\nHere is the protein sequence:\n$sequence\n\n";
do {
  #user input for the MOTIF
	print "Enter a motif to search for: ";
	chomp ($motif = <>);
	$motif = uc($motif);
	
  #if MOTIF exists
	if ($sequence =~ /$motif/) {
		print "I found it!\n\n";
	}else{
  #if MOTIF does not exist throw error
		print "I cound\'nt find it.\n\n";
	}
#perform MOTIF search until user enters space
}until ($motif =~ /^\s*$/);
exit;
