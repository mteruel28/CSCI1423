#!/usr/bin/perl

# sending data to STDOUT "Standard Output"

print STDOUT ("Hello is it me you are looking for? \n");

#being lazy and using default output
print (" I can see it in you r eyes \n");

#Lazier
print "I can see it in your smile \n";

#Taking in user input from STDIN
$foo= <STDIN>;
#printing out the input
print "it is me $foo \n";

#prompting for user input
print "why? \n";
#taking in the answer
$bar =  <STDIN>;
#confirming the input 
print "your answer $bar : ) \n";
#cleaning up user input
print "what? \n"; $baz= <STDIN>;
chomp($baz);
print "you gave $baz as answer. \n";

#more perl like \lazy way of taking user input (method chaining)
print" who? \n";
chomp ($qux = <>);
print "we got $qux \n';
