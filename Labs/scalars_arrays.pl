#!/usr/bin/perl

use warnings;

# Variable Declartion (and Initialization)
$name= "Maiko";
$animal= "dog";
$breed= "beagle";
@any =("cat",2,"white");

print "name=$name\n";
print "animal=$animal\n";
print "breed=$breed\n";
print "@any\n";

#Using an Array as a Stack
push(@any,$name);
print "@any\n"; 
pop (@any);
print "@any\n";

#Using an Array as a Queue
shift(@any);
push(@any,"corgi");
print"@any\n";
