#!/usr/bin/perl;

use warnings;

#variable declaration
@lines,$line,$file,@contents,$linetowrite,$input;

#Reading in a file

open(INFILE,'<','data.txt')|| die("Cannot open file. $! \n");

#Sipping from a file

while($line=<INFILE>) {
print  "We got $line from the file. \n";
}

#Closing a File
close(INFILE);


#Slurping a File

@lines = <INFILE>;
print "@lines\n";


#Assigning a File name to a variable

$file= "data.txt";

#Opening a file for reading

open(FILE1, "<",$file ) || die("nope $! \n");

#Slurping a file
chomp(@line= <FILE1>);
print"@lines\n";
close(FILE1);


#Writing out to a file
open(OUTFILE, '>', "data2.txt") || die("Try Again! $! \n");
print OUTFILE "Dog \n";
close(OUTFILE)


