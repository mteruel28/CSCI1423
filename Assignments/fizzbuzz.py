#!/usr/bin/python
#Variable values


print("enter a number value:")

num = int(input())
if num % 3 == 0 and num % 5 == 0 :
    print("Fizzbuzz")
elif num % 3 == 0 :
    print("fizz")
elif num % 5 == 0 :
    print("Buzz")
else: 
    print (num)
