#!/usr/bin/perl

#Variable Declaration
@names,$name,$red;
 
#Reading in a file
open(INFILE,'<','name.txt')||die("nope $! \n");

#Sipping from a File
while($name=<INFILE>) {
chomp($name);
print "your name is $name \n";
}

#Closing File
close(INFILE);

#Assigning a File name to a variable
$red="name.txt";


#Opening file for reading
open(FILE1,'<',$red) || die("Cannot open file. $! \n");

#Name Input
print " do you want to sign up? \n";
$name=<>;
chomp($name);
print" your name is $name\n";

#Closing a file
close(INFILE);


#Writing out to a file
open (OUTFILE,'>>','name.txt')|| die("goodluck. $! \n");
print OUTFILE <STDIN>;

#Slurping in a file
chomp(@names=<FILE1>);
print "@names\n";
close(FILE1);

