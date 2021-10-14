!usr/bin/perl

#taking user input
print "Enter the radius in (cm): ";
$rad = <STDIN>;
chomp $rad;
 
#apply formula 
$ar = 3.14 * $rad *$rad;

#print the area of circle
print "Area of Circle = ”,  $ar, "sq cm\n";

exit;
