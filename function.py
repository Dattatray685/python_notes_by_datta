# write a function to check even and odd data
"""def check_num(num):
    if num%2==0:
        print("even")
    else:
        print("odd")
check_num(5)
check_num(6)
# create a function to check a string is palindrome or not
def check_palidrome(str):
    str= str.strip().lower()
    rev_str = str[::-1]
    if  rev_str == str:
        print("palindrome")
    else:
        print("not palindrome")
str_input=input("enter a name")
check_palidrome(str_input)

#create a function to  check a number is prime or not
def check_prime(num):
    if num%2==0:
        
        print('prime')
    else:
        print("not prime")

check_prime(4) """

# what we need to do when we dont know how parameters we needs to create
def  details(**name):
    print(name)


details(name="datta",age= 19,gender="male")
#

def language(*name):
    print(name)

language("python","java","c++")

"""
KWARGS ---> keywords arbitrary arguments
        ---> when we dont know how many parameters we need to create use KWARGS
        ---> default data type is dictionary
        ---> create with double star(**)

ARGS    ---> arbitrary arguments
        ---> when we dont know how many arguments we need to pass use ARGS
        ---> default data type is tuple
        ---> create with single star(*)
"""
"""#write a function that takes any number and returns their sum
#10,20,30, --->60
def total(*num):
    print(sum(num))

total(10,20,30)

# create a function so it can accept the marks and student details
def report(*marks,**name):
    print(marks)
    print(name)

report(80,90,95,name="datta",grade="A")"""

#create a function to find the square of a number
def squ(a):
    print(a*a)

squ(8)

#create a function to find the maximum of 2 numbers
def ma(a,b):
    if a>b:
     print(a)
    else:
        print(b)

ma(8,9)

#create a function to print the numbers from 1 to N

def num(a):
    for i in range(1,a+1):
        print(i)

num(45)
#CREATE a function to count the characters in a string
def count(a):
    print(len(a))

count(input("enter a name"))
#create a function to check the +ve,-ve and neutral
def pos(a):
    if a>0:
        print("postive num")
    elif a<0:
        print("negative num")
    else:
        print("neutral num")

pos(int(input("enter a num")))
#create a function to find the largets of 3 numbers
def larg(*num):

    print(max(num))
    print(min(num))

larg(239,685,96)

