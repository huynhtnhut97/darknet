# -*- coding: utf-8 -*-
"""
Created on Wed Dec  9 14:55:43 2015

This script is to convert the txt annotation files to appropriate format needed by YOLO 

@author: Guanghan Ning
Email: gnxr9@mail.missouri.edu
"""

import os
from os import walk, getcwd
from PIL import Image


#classes = ["pedestrian","people","bicycle","car","van","truck","tricycle","awning-tricycle","bus","motor"]

def convert(size, box):
    dw = 1./size[0]
    dh = 1./size[1]
    x = (box[0] + box[1])/2.0
    y = (box[2] + box[3])/2.0
    w = box[1] - box[0]
    h = box[3] - box[2]
    x = x*dw
    w = w*dw
    y = y*dh
    h = h*dh
    return (x,y,w,h)

"""-------------------------------------------------------------------""" 

""" Configure Paths"""
print('=========Configure Paths=========')
mypath = '/home/nhuthuynh/darknet_alexeyAB/darknet/data/annotations_val/'
outpath = '/home/nhuthuynh/darknet_alexeyAB/darknet/data/annotations_val_formated/'

# cls = "person"
# if cls not in classes:
#     exit(0)
# cls_id = classes.index(cls)

wd = getcwd()
#list_file = open('%s\%s_list.txt'%(wd, cls), 'w')

""" Get input text file list """
print('=========Get input text file list=========')
txt_name_list = []

for dirpath, dirnames, filenames in os.walk(mypath):
    for name in filenames:
        print(os.path.join(dirpath, name))
    for name in dirnames:
        print(os.path.join(dirpath, name))
    txt_name_list.extend(filenames)
    break

""" Process """
print('=========Process=========')
for txt_name in txt_name_list:
    # txt_file =  open("Labels/stop_sign/001.txt", "r")
    
    """ Open input text files """
    print('=========Open input text files=========')
    txt_path = mypath + txt_name
    print("Input:" + txt_path)
    txt_file = open(txt_path, "r")
    lines = txt_file.read().split('\n')   #for ubuntu, use "\r\n" instead of "\n"
    
    """ Open output text files """
    print('=========Open output text files=========')
    txt_outpath = outpath  + txt_name
    print("Output:" + txt_outpath)
    txt_outfile = open(txt_outpath, "w")
    
    
    """ Convert the data to YOLO format """
    print('=========Convert the data to YOLO format=========')
    ct = 0
    print('lenth of line is: ')
    print(len(lines))
    print('\n')
    for line in lines:
        if(len(line) >= 2):
            ct = ct + 1
            print(line + "\n")
            elems = line.split(' ')
            print(elems)
            cls_id = int(elems[0])
            if (cls_id == 11):
                exit(0)
            xmin = elems[1]
            ymin = elems[2]
            xmax = float(elems[1]) + float(elems[3])
            ymax = float(elems[2]) + float(elems[4].replace("\n",""))
            #xmax = elems[3]
            #ymax = elems[4]
            #
            img_path = str('/home/nhuthuynh/darknet_alexeyAB/darknet/data/images_val/%s.jpg'%(os.path.splitext(txt_name)[0]))
            print(str(img_path))
            #t = magic.from_file(img_path)
            #wh= re.search('(\d+) x (\d+)', t).groups()
            im=Image.open(img_path)
            w= int(im.size[0])
            h= int(im.size[1])
            #w = int(xmax) - int(xmin)
            #h = int(ymax) - int(ymin)
            # print(xmin)
            print(w, h)
            b = (float(xmin), float(xmax), float(ymin), float(ymax))
            bb = convert((w,h), b)
            print(bb)
            result=str(cls_id) + " " + " ".join([str(a) for a in bb])
            #txt_outfile.write(str(cls_id) + " " + " ".join([str(a) for a in bb]) + '\n')
            txt_outfile.write(str(cls_id) + " " + " ".join([str(a) for a in bb]) + '\n')
    txt_outfile.close()

    # """ Save those images with bb into list"""
    # print('=========Save those images with bb into list=========')
    # if(ct != 0):
    #     list_file.write('/home/nhuthuynh/darknet_alexeyAB/darknet/build/darknet/x64/data/images/%s.jpg\n'%(os.path.splitext(txt_name)[0]))

print('=========Done=========')
# list_file.close()    