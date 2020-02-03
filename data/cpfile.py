import shutil
import os

path = "/home/nhuthuynh/darknet_alexeyAB/darknet/data/annotations_val_formated/"
for file in os.listdir(path):
  currentPath = os.path.join(path,file)
  newPath = os.path.join("/home/nhuthuynh/darknet_alexeyAB/darknet/data/images_val/",file)
  shutil.copyfile(currentPath,newPath)