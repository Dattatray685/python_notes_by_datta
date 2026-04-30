"""Regular expression --> RegEx --> are patterns
used to match, search, validate and manipulate the text
#data science
#ML
#recursive
#Hcl
#shahul@telxsi.com
#charan@google.com
"""

import re
text  = "i have a cat"
#find cat is present in above tex
#1.search(pattern,text)
print(re.search("cat", text))
#2.findall(pattern,text)--> returns a list with matching string
text2 ="cat mat bat"
print(re.findall("at", text2))
text3 = "ds with python and ml"
#replace ml with machine learning
print(text3.replace("ml","machine learning"))
print(re.sub("ml","machine learning",text3))
#split():- by default returns a list
print(re.split(" ",text3))
text4 = "vaibhavsalunke@gmail.com"
print(re.split("@",text4))

"""
^ --> starts with
$ --> ends with
* --> 0 or more
+ --> 1 or more
[] --> set of character --> [abc]
\d --> digits from 0-9
\w --> word character --> a-z,A-Z,0-9
\s --> space
"""
t1 = "my number is 9699295398"
t2 = "9922351974 is my number"
#extract numeric data from above 2 texts
print(re.findall(r"\d+",t1))
print(re.findall(r"\d+",t2))
print(re.findall(r"\d*",t2))
