#!/usr/bin/perl

#Variable Declaration
$name="name.txt"; 

#Opening File to Reading
open(INFILE,'<', $name)||die("nope $! \n");

#Sipping from a File
while($name=<INFILE>) {
chomp($name);
print "your name is. \n";
}

#Signing up
print" would you like to signup?\n";


#Reading from the file
open(INFILE,'<','name.txt') || die("Cannot open file. $! \n");


#Name Input
print "What is your name?\n";
$name=<>;
chomp($name);
print "Your name is ",$name,"\n";
