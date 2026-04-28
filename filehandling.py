#what is file handling?
#Handling files except python file is known as filehandling ex:- text,json,csv,excel...etc
#to handle otherfiles in python use "open(filename,mode)"
#while handing the file we have 4 modes --> x,w,a,r
#1.x-mode is used to create new file
"""f = open("sample.txt1","x")
f.close()
print("file created successfully")"""
#2.w-mode used to write or overwrite content in the file
"""f = open("sample.txt","w")
f.write("Hello world!")
f.close()"""
#3.a-mode used to add or append extra content in to the file
"""f = open("sample.txt","a")
f.write(".welcome to python programming language")
f.close()"""
#4.r-mode used to read the file
"""f = open("sample.txt","r")  #Note: the open() by default is in "r" mode
print(f.read())
f.close()"""

#Pickling :- the process of converting a file into bytes (1's or 0's) is known as pickling
#The process converting the 2D data in to 1D(BYtes) is known as serialisation
#The process of converting 1D bytes into 2D actual data is known as deserialisation(unpickle)
#we need to import pickle module
#why we need to pickle the file or data?
#transferred over networks
#to build ML models convert the file in to pickle
#serialisation
import pickle
l =[10,20,30,40,50,60]
f = open("vaibhav.pkl","wb")  #wb write in binary
pickle.dump(l,f)
f.close()
print("data pickled successfully")
"""#unpickle desrialisation

f = open("sample.pkl","rb")
l = pickle.load(f)
print(l)
f.close()"""