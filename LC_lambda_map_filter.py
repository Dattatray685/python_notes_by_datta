"""list comprehension : it offers a smaller codes where a new list
is creaetd from the exsisting list

syntax --> [item for item in col <condition>]"""

fruits = ['apple','banana','mango','kiwi','orange']
#separate the items having letter "e" and store it in anew list
new = [] #store the items having letter "e"
for i in fruits:
     #print(i)
     if "e" in i:
         new.append(i)
print(new)

l2 = ['python','java','c++','c']
def check_letter(letter):
    new = [] #store the items having letter "e"
    for i in l2:
        print(i)
        if "e" in i:
            new.append(i)
    print(new)


new2 =[i for i in l2 if "e" in i]
print(new2)
#create a range of even numbers upto 100 and store it in a new list
new3 = [i for i in range(0,101,2)]
print(new3)

new3 = [i for i in range(1,101,2)]
print(new3)

"""#lambda functions :is an anonymous function where
it takes many arguments and  single expression

syntax --> lambda arguments : single exapression
 lambda is powerfull  when we use inside the  another function so functions are
 first class object"""

"""a = lambda a,b,c: a+b+c
print(a(10,20,30))"""


"""a = lambda a,b,c: a+20,b+30,c+40
print(a(10,20,30))"""
#argument : when we call a function we pass a value which is known as argument
#expression : steps or measures used to give a output is known as expression


"""
map():it takes a function as an argument and run over 
each element in the collection
syntax --> map(func,col_name)
"""
age = [20,16,23,15,32,27,14,19,15,12,20]
#check above elements in the list and print who is eligble for voting
"""for i in age:
    if i>=18:
        print("true")
    else:
        print("false")"""

"""def check_age(age):
    if age >= 18:
        return("True")
    else:
       return("False")

m1 = list(map(check_age,age))

print(m1)"""

m = tuple(map(lambda x:x>=18,age))
print(m)
##########################25/03/2026####################################
"""l2 = ['python','java','c++','c']
#write program to print length of each item in the above list and store it in new function
new = [len(i) for i in l2]
print(new)
"""
"""#solve by using map()
m = list(map(len,l2))
print(m)"""


"""filter function :-  it takes a function as an argument and 
print the data which is condition true 
syntax --> filter(func,col_name)"""

"""age = [20,16,23,15,32,27,14,19,15,12,20]
#check above elements in the list and print who is eligble for voting
m = list(map(lambda x:x>=18,age))
print(m)

f = list(filter(lambda x:x>=18,age))
print(f)
"""
#1.take a list numbers and return a list containing square of each number
sq = [1,4,6,9]
f1 = list(map(lambda x: x**2,sq ))
print(f1)
#2. covert all names in below list into uppercase() by using the map() names  =[jhon,abhi,basheer,charan]
name = ["jhon","abhi","basheer","charan"]
upper_name = list(map(str.upper,name))
print(upper_name)
#3.from the given list filter only even numbers num = [10,15,20,25,30,35]
num = [10,15,20,25,30,35]
f2 = list(filter(lambda x:x%2==0,num))
print(f2)
#4.filter the words which are longer then 4 characters word= [cat,elephant,dog,tiger,lion]
word= ["cat","elephant","dog","tiger","lion"]
f3 = list(filter(lambda x: len(x)>4,word))
print(f3)
#5.convert the celisus to fahrenheit using map() f = (C * 9/5) + 32
cel = [10,9,8.5,3,2,68]
f4 = list(map(lambda x:(x * 9/5) + 32,cel))
print(f4)