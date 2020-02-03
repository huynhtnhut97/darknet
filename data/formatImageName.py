import os
path = "/home/nhuthuynh/darknet_alexeyAB/darknet/data/VisDrone2018-VID-train/sequences/"
for folder in os.listdir(path):
  folderPath = os.path.join(path,folder)
  if(os.path.isdir(folderPath)):
    for filename in os.listdir(folderPath):
      if(os.path.splitext(filename)[1]=='.jpg'):
        os.rename(os.path.join(folderPath,filename),os.path.join(folderPath,str(int(os.path.splitext(filename)[0])))+'.jpg')