#!/usr/bin/perl

#prompt user for a word to shout out , then ask how many times they want the word shouted. Once program has that information, print the user porvided the word the number of times the user requested being sure to add bangs to imply shouting

print" choose a word to shout out!\n";
$word= <STDIN>; 
$one =0

print" how many times does you want to shout?\n";
$shout =<STDIN>; 

while ($one < 100){
 print " this is the word you choose $word !!!!!!! \n";
 $one++;
}
