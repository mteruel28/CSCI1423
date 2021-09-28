#!/usr/bin/perl

my @mypez=();

#variable declaration
$A = 0; 

#printing empty on pez dispenser

print"the pez dispenser is now empty:@mypez \n";

#entering flavors / for loop

for(my $A=0; $A<10; $A++){
print" what flavor of pez you want?\n";
my $A=<STDIN>;
chomp $A;
push(@mypez,$A);
print"@mypez\n";}
pop(@mypez);
print"@mypez\n";

  
