#!/usr/bin/perl -w

#printing odd and even numbers in user defined range
print "\nWelcome!\n\n";
print "\nWould you like to print odd numbers or even numbers?\n\n";

#promt to print odd or even numbers
print "Enter 1 to print odd numbers.\n";
print "Enter 2 to print even numbers.\n";
$select = <>;
chomp $select;

#printing odd numbers
if ($select eq 1) {
    #promt for upper limit
	print "\nEnter the starting value = \n";
	$a = <>;
	chomp $a;
    #promt for lower limit
	print "Enter the ending value = \n";
	$b = <>;
	chomp $b;

    #condition: if both a and b are odd.
	if ($a%2 != 0 && $b%2 != 0) {
		print "\nHere are all the odd numbers between $a and $b\n"; 
		for ($i=$a+2; $i<$b; $i+=2) {
			print "$i\n";
		}
    #condition: if a is even and b is odd.
	}elsif ($a%2 == 0 && $b%2 == 0) {
		print "\nHere are all the odd numbers between $a and $b\n";
		$a+=1, $b+=1;
		for ($i=$a; $i<$b; $i+=2) {
		        print "$i\n";
		}
    #condition: if a is odd and b is even.
	}elsif ($a%2 != 0 && $b%2 == 0) {
		print "\nHere are all the odd numbers between $a and $b\n";
		$b+=1;
		for ($i=$a+2; $i<$b; $i+=2) {
		        print "$i\n";
		}
    #condition: if both a and b are even.
	}elsif ($a%2 == 0 && $b%2 != 0) {
		print "\nHere are all the odd numbers between $a and $b\n";
		$a+=1;
		for ($i=$a; $i<$b; $i+=2) {
		        print "$i\n";
		}
	}
#printing even numbers
}elsif ($select eq 2) {
    #promt for upper limit
	print "\nEnter the starting value = \n";
	$a = <>;
	chomp $a;
    #promt for lower limit
	print "Enter the ending value = \n";
	$b = <>;
	chomp $b;

    #condition: if both a and b are odd.
	if ($a%2 != 0 && $b%2 != 0) {
		print "\nHere are all the even numbers between $a and $b\n"; 
		$a+=1, $b+=1;
		for ($i=$a; $i<$b; $i+=2) {
			print "$i\n";
		}
    #condition: if both a and b are even.
	}elsif ($a%2 == 0 && $b%2 == 0) {
		print "\nHere are all the even numbers between $a and $b\n";
		for ($i=$a+2; $i<$b; $i+=2) {
		        print "$i\n";
		}
    #condition: if a is odd and b is even.
	}elsif ($a%2 != 0 && $b%2 == 0) {
		print "\nHere are all the even numbers between $a and $b\n";
		$a+=1;
		for ($i=$a; $i<$b; $i+=2) {
		        print "$i\n";
		}
    #condition: if a is even and b is odd.
	}elsif ($a%2 == 0 && $b%2 != 0) {
		print "\nHere are all the even numbers between $a and $b\n";
		$b+=1;
		for ($i=$a+2; $i<$b; $i+=2) {
		        print "$i\n";
		}
	}
#if the user chooses anthing apart from 1,2 throw a error message
}else {
	print "Error! Please select a valid entry\n\n";
}

exit;
