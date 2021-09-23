#!/usr/bin/perl

print (" Do you want to see a movie quote?\n");

#Response to Movie Quote

$moviequote=<STDIN>;

if($moviequote="Y" or "y" or "yes" or "YES"){

print ("Im gonna make him an offer he cant refuse.\n");
}

#Extra Credit

print (" Do you want to see another movie quote?\n");

$moviequote2=<STDIN>;

if($moviequote2="Y" or "y" or "yes" or "YES"){

print(" Anyone want a peanut?\n");

}

print("Do you know where this movie quote is from?\n");
$response=<STDIN>;

if($response=<STDIN>){

print("Its from the Princess Bride\n");
}
