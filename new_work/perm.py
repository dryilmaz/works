import itertools
import pickle
i=0
#f=open("myfile.txt","w+")
mylist=["Akyurt",
"Altındağ",
"Ayaş",
"Balâ",
"Beypazarı",
"Çamlıdere",
"Çankaya",
"Çubuk",
"Elmadağ",
"Etimesgut",
"Evren",
"Gölbaşı",
"Güdül",
"Haymana",
"Kalecik",
"Kahramankazan",
"Keçiören",
"Kızılcahamam",
"Mamak",
"Nallıhan",
"Polatlı",
"Pursaklar",
"Sincan",
"Şereflikoçhisar",
"Yenimahalle"]
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
