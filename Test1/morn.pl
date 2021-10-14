#!/usr/bin/perl

#write a perl program that prompts user for letter in an english alphabet. If the number is m or n , then print ' what a beautiful morn! and if not then one of those letters , print it is morning and you gave me a letter
my $luckyalpha = "m","n";
my $alphabet = ("l","m","n","o","p");
my$guess;
do{
print "pick a letter between L and P\n";
$guess= <STDIN>;
}while $guess =(!$luckyalpha);
print "What a beautiful MorN!\n";

do{
print "pick a letter between L and P\n";
$guess =<STDIN>;
}while $guess = ($alphabet);
print "It is morning and you gave me a letter\n";


