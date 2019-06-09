import itertools
import pickle
i=0
#f=open("myfile.txt","w+")
mylist=["Göynücek",
"Gümüşhacıköy",
"Hamamözü",
"Merzifon",
"Suluova",
"Taşova"]
#my=list(itertools.permutations(mylist,2))
my=list(itertools.combinations(mylist,2))
#f.close()
#for x in my:
#    f.write("\n".join(x))
#f.close()
#say=len(my)
#for a in range(0,say):
#    f.write(my[a])
print(my)
#print(mylist)
#f.close()
