"""what is object oriented programming language?
In python each line of code is a object where it has its own identity, attributes
and methods of interaction based on this object ,belongs to a category known
as class
class --> blueprint of object
object --> instence of class

#The main purpose of classes and object are to avoid duplicates and build a
common codes so every user can use it


IF condition --> decison making codes
for loop --> run instructions over all elements
def --> executes block of code when we call it

ex: Bank --> customers   --> online banking -->
#q)How the OOP's concept will works? baesd on rules
#The rules of Object oriented programming language--> 4 rules or pillers
#1.encapsulation  :-  wrapping the data and methods in a single class
#restrict direct access to some private data
ex:- can we directly change account balance --> No
#2.polymorphism :- one method behave differently based on objects
#3.abstraction :- Hiding the implementation and show necessary features
#4.Inheritence :- one class can inherit properties from another class

#How many types of attributes / properties / data that we want to share?
#there 2 types
#1.class attributes :- common sharable data or properties
#2.object attributes :- unique and non sharable attributes
"""

#create a class customers
class customer():
     # create class attribute
     bank_name ="sbi bank"
     ifsc = "sbi0000002"
     branch = "chapaner "
     state = "maharashtra"

     """create object attributes
         before creating object attributes, we need to intialise object attributes
         inside the class"""
     def __init__(self ,name,account,balance,mobile):
         self.name = name
         self.account = account
         self.balance = balance
         self.mobile = mobile

     # what is a method?
     # methods are functions created inside the class
     def welcome_wish(self):
         return (f"Hello {self.name},welcome to {self.bank_name}!")
     #what is method ?
     #methods are function created inside the class
     def check_balance(self):
         return (f"Hello {self.name}! your current  balance is {self.balance}/-")
     #crea
     def deposit(self,amount):
         self.balance = self.balance + amount
         return(f"""transaction is successfull.
{amount}/-rupees credited in your account
the updated balance is {self.balance}/-""")
     def withdraw(self,amount):
         self.balance = self.account - amount
         return(f"""transaction is successfull.{amount}/-has been withdraw.
the updated balance is {self.balance}/-""")
#create a object customer
c1 = customer("python",969868897,10000,9699295398)
c2 = customer("datta",9368195340,100000,9421393131)

#access the class attributes
"""print(c1.ifsc)
print(c2.branch)"""
#access the object attributes
#print(c2.balance)
#access the method
#print(c1.welcome_wish())
#print(c1.check_balance())
#print(c1.deposit(20000))
#print(c1.withdraw(15000))

"""
step1:  create  a class  --> use class 
step2:  create a object  and assign the class to it --> c1 = class()
step3:  define the class attributes and object attributes 
step4:  create object attributes --> intiate object attributes inside the class
step5:  create methods --> functions inside the class
step6:  access the attributes and apply the methods
"""
a = [1,2,3,4,5,6]
print(a)
print(type(a))
print(dir(a))
print(c1)
print(type(c1))
print(dir(c1))
#=============================================#
#itrators :break the large amount of data into small chunks
#how the iterators can be build?
#we are having 2 protocol to build the iterators
#1.__iter__()
#2.__next__()
l = [1,2,3,4,5,6]
"""for i in l:
    print(i)"""
i = iter(l)
print(next(i))
print(next(i))
print(next(i))
print(next(i))
print(next(i))
print(next(i))
# connecting mysql
# handle json (pandas)
#genrators
#requests
#regular expression

class  Car():
    def __init__(self,brand,colour,speed):
        self.brand = brand
        self.colour = colour
        self.speed = speed
    def show_info(self):
        print("brand:",self.brand)
        print("colour:",self.colour)
        print("speed:",self.speed)

my_car = Car("scarpio","black",250)
my_car.show_info()
my_car.brand



class Student():
    def __init__(self,name,standard,rollno,marks):
        self.name = name
        self.standard = standard
        self.rollno = rollno
        self.marks = marks


    def show_info(self):
        print("name:",self.name)
        print("standard:",self.standard)
        print("rollno:",self.rollno)
        print("marks:",self.marks)



s1 = Student("datta","10th",20,18)
s2 = Student("sai","10th",5,19)
s3 = Student("shivam","10th",14,15)
s4 = Student("suraj","10th",10,17)
s1.show_info()
s2.show_info()
s3.show_info()
s4.show_info()



class Bank():
    def __init__(self,name,account,balance,mobile):
        self.name = name
        self.account = account
        self.balance = balance
        self.mobile = mobile

    def deposit(self,amount):
        self.balance = self.account + amount
        print(f"{amount}/-rupees credited in your account")
        print(self.balance)


b1 = Bank()
b1.deposit(100)




