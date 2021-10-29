#!usr/bin/perl -w

#This program converts amino acid to genetic code

#user input
print "\nWelcome to amino acid to genetic code conversion.\n\n";
print "Please enter your amino acid :";
print "\n//NOTE//: Use either the three letter code or one letter code or full name of amino acid.\n\n";

$aminoAcid = <>;
chomp $aminoAcid;

$aminoAcid = uc($aminoAcid);

#matching the single letter code, three-letter code or the amino acid name
if ($aminoAcid eq 'F' || $aminoAcid eq 'PHE' || $aminoAcid eq 'PHENYLALANINE') {
	print "\nThe given amino acid Phenylalanine, has the following genetic codes:\n 'UUU', 'UUC'\n\n";
}elsif ($aminoAcid eq 'L' || $aminoAcid eq 'LEU' || $aminoAcid eq 'LEUCINE') {
	print "\nThe given amino acid Leucine, has the following genetic codes:\n 'UUA', 'UUG', 'CUU', 'CUC', 'CUA', 'CUG'\n\n";
}elsif ($aminoAcid eq 'I' || $aminoAcid eq 'ILE' || $aminoAcid eq 'ISOLEUCINE') {
	print "\nThe given amino acid Isoleucine, has the following genetic codes:\n 'AUU', 'AUC', 'AUA'\n\n";
}elsif ($aminoAcid eq 'M' || $aminoAcid eq 'MET' || $aminoAcid eq 'METHIONINE' || $aminoAcid eq 'START') {
	print "\nThe given amino acid Methionine, has the following genetic codes:\n 'AUG'\n\n";
}elsif ($aminoAcid eq 'V' || $aminoAcid eq 'VAL' || $aminoAcid eq 'VALINE') {
	print "\nThe given amino acid is Valine, has the following genetic codes:\n GUU', 'GUC', 'GUA', 'GUG'\n\n";
}elsif ($aminoAcid eq 'S' || $aminoAcid eq 'SER' || $aminoAcid eq 'SERINE') {
	print "\nThe given amino acid Serine, has the following genetic codes:\n 'UCU', 'UCC', 'UCA', 'UCG', 'AGU', 'AGG'\n\n";
}elsif ($aminoAcid eq 'P' || $aminoAcid eq 'PRO' || $aminoAcid eq 'PROLINE') {
	print "\nThe given amino acid Proline, has the following genetic codes:\n 'CCU', 'CCC', 'CCA', 'CCG'\n\n";
}elsif ($aminoAcid eq 'T' || $aminoAcid eq 'THR' || $aminoAcid eq 'THREONINE') {
	print "\nThe given amino acid Threonine, has the following genetic codes:\n 'ACU', 'ACC', 'ACA', 'ACG'\n\n";
}elsif ($aminoAcid eq 'A' || $aminoAcid eq 'ALA' || $aminoAcid eq 'ALANINE') {
	print "\nThe given amino acid Alanine, has the following genetic codes:\n 'GCU', 'GCC', 'GCA', 'GCG'\n\n";
}elsif ($aminoAcid eq 'Y' || $aminoAcid eq 'TYR' || $aminoAcid eq 'TYROSINE') {
	print "\nThe given amino acid Tyrosine, has the following genetic codes:\n 'UAU', 'UAC'\n\n";
}elsif ($aminoAcid eq 'STOP') {
	print "\nThe Stop codons are as follows:\n 'UAA', 'UAG', 'UGA'\n\n";
}elsif ($aminoAcid eq 'H' || $aminoAcid eq 'HIS' || $aminoAcid eq 'HISTIDINE') {
	print "\nThe given amino acid Histidine, has the following genetic codes:\n 'CAU','CAC'\n\n";
}elsif ($aminoAcid eq 'Q' || $aminoAcid eq 'GLN' || $aminoAcid eq 'GLUTAMINE') {
	print "\nThe given amino acid Glutamine, has the following genetic codes:\n 'CAA', 'CAG'\n\n";
}elsif ($aminoAcid eq 'N' || $aminoAcid eq 'ASN' || $aminoAcid eq 'ASPARAGINE') {
	print "\nThe given amino acid Aspargine, has the following genetic codes:\n AAU', 'AAC'\n\n";
}elsif ($aminoAcid eq 'K' || $aminoAcid eq 'LYS' || $aminoAcid eq 'LYSINE') {
	print "\nThe given amino acid Lysine, has the following genetic codes:\n 'AAA', 'AAG'\n\n";
}elsif ($aminoAcid eq 'D' || $aminoAcid eq 'ASP' || $aminoAcid eq 'ASPARTIC ACID') {
	print "\nThe given amino acid Aspartic Acid, has the following genetic codes:\n 'GAU', 'GAC'\n\n";
}elsif ($aminoAcid eq 'E' || $aminoAcid eq 'GLU' || $aminoAcid eq 'GLUTAMIC ACID') {
	print "\nThe given amino acid Glutamic Acid, has the following genetic codes:\n 'GAA', 'GAG'\n\n";
}elsif ($aminoAcid eq 'C' || $aminoAcid eq 'CYS' || $aminoAcid eq 'CYSTEINE') {
	print "\nThe given amino acid Cysteine, has the following genetic codes:\n 'UGU', 'UGC'\n\n";
}elsif ($aminoAcid eq 'W' || $aminoAcid eq 'TRP' || $aminoAcid eq 'TRYPTOPHAN') {
	print "\nThe given amino acid Tryptophan, has the following genetic codes:\n 'UGG'\n\n";
}elsif ($aminoAcid eq 'R' || $aminoAcid eq 'ARG' || $aminoAcid eq 'ARGININE') {
	print "\nThe given amino acid Arginine, has the following genetic codes:\n 'CGU', 'CGC', 'CGA', 'CGG', 'AGA', 'AGG'\n\n";
}elsif ($aminoAcid eq 'G' || $aminoAcid eq 'GLY' || $aminoAcid eq 'GLYCINE') {
	print "\nThe given amino acid Glycine, has the following genetic codes:\n 'GGU', 'GGC', 'GGA', 'GGG'\n\n";
}else{
  #throw error if the input does match the three letter code, one letter code or full name of amino acid
	print "\n\nError! Please enter a valid Amino Acid.\n";
	print "//NOTE//: Use either the three letter code or one letter code or full name of amino acid.\n\n";
}
exit;
