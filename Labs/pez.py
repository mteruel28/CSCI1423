#Declaring an Empty Array and Stack
mypez = []
print ('the pez dispenser is now empty',mypez)

# Using ForLoop and Standard Input for Stack Loading
for Pez in range (1,10):
    flavors=input('What pez flavor do you want?')
    mypez.append(flavors)
    print(mypez)

first_item = mypez.pop(0) #first pez
print(first_item)

print(mypez)
second_element = mypez.pop(0)#second pez
print(second_element)

print(mypez)
third_element=mypez.pop(0)
print(third_element)

print(mypez)
fourth_element=mypez.pop(0)
print(fourth_element)

print(mypez)
fifth_element=mypez.pop(0)
print(fifth_element)

print(mypez)
sixth_element=mypez.pop(0)
print(sixth_element)

print(mypez)
seventh_element=mypez.pop(0)
print(seventh_element)

print(mypez)
eighth_element=mypez.pop(0)
print(eighth_element)

print(mypez)
nineth_element=mypez.pop(0)
print(nineth_element)

print(mypez)
tenth_element=mypez.pop(0)
print(tenth_element)

