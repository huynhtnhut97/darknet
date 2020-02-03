import os
from os import listdir
from os.path import isfile, join
import fnmatch
path = '/mnt/var/datasets/masan_images/'
txtFile = open('valid_masan.txt','w')
for file in listdir(path)[:-1]:
        if '.txt' == os.path.splitext(file)[1]:
                txtFile.write(os.path.join(path,os.path.splitext(file)[0]+'.jpg')+'\n')
file = listdir(path)[-1]
txtFile.write(os.path.join(path,os.path.splitext(file)[0]+'.jpg')+'\n')
txtFile.close()
