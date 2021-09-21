#!/usr/bin/perl

#variable values

my $bear; 

print "enter number between 1 and 100\n";

$bear = <STDIN>;
chomp ( $bear );
 
if(($bear % 3)==0){

print "fizz\n"; }

if(($bear % 5)==0){

print "buzz\n"; }

if (($bear % 3 ==0) && ($bear % 5 ==0)) {

print "fizzbuzz\n"; }


