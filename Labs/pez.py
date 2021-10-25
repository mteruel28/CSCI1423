#Declaring an Empty Array and Stack
mypez = []
print ('the pez dispenser is now empty',mypez)

# Using ForLoop and Standard Input for Stack Loading
for Pez in range (1,10):
    flavors=input('What pez flavor do you want?')
    mypez.append(flavors)
    print(mypez)

first_item = mypez.pop(0) #first pez
second_element =mypez.pop(0) #second pez
print (first_item)
print(second_element)