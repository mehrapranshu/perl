#!/usr/bin/perl

#set usernamer and password
$userName = "abcdef";
$password = "1234";

print "\nHey welcome to Linux\n\n";

#promt the user to enter the username
print "Please enter your Username:\n";
$user = <STDIN>;
chomp $user;

#promt the user to enter the password
print "Please enter your Password:\n";
$pass = <STDIN>;
chomp $pass;

#matching the username and password with user entered data
if ($userName eq $user && $password eq $pass) {
	print "\nLogin Successful\n";
}else{
	print "\nIncorrect Credentials...\nPlease Login again\n\n";
}

exit;
