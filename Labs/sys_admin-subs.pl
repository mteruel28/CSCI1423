#!/usr/bin/perl

package one; 

#this is my first variable
$a= "Dog";

#Defining a Subroutine
sub install {
$package ="bear";
  system("sudo apt-get update command"); 
  system("sudo apt-get upgrade command"); 
  system("sudo apt-get install -y perl command"); 
}
install;
