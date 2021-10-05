#!/usr/bin/perl

#Matching Regular Expression

$flavor = " I like blueberry pancakes";
if ($flavor =~ /blueberry/){
    print " I like blueberry pancakes\n";
} else {
   print " I like chocolate pancakes\n";
}

#Substitution Regular Expression

$pet = " I left bear at home\n";
$pet =~ s/bear/moose/;

print "$pet\n";
