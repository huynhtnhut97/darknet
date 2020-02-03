import time
import json
import argparse
import os
import shutil
from operator import itemgetter
def arg_parse():
    """
    Parse arguements to the detect module
    
    """
    parser = argparse.ArgumentParser(description='YOLO v3 Video Detection Module')
   
    parser.add_argument("--gtpath", dest = 'groundtruth', help = 
                        "Video to run detection upon",
                        default = "video.avi", type = str)
    parser.add_argument("--imagespath", dest = 'images', help = 
                        "Video to run detection upon",
                        default = "video.avi", type = str)
    return parser.parse_args()
def createAnnotations(path,dest):
    for folder in os.listdir(path):
        folderPath = os.path.join(path,folder)
        if (os.path.isdir(folderPath)):
            for filename in os.listdir(folderPath):
                filePath = os.path.join(folderPath,filename)
                newFilename = folder+'_'+filename
                newFilePath = os.path.join(dest,newFilename)
                if(os.path.isfile(filePath)):
                    os.rename(filePath,newFilePath)
def createImages(path,dest):
    for folder in os.listdir(path):
        folderPath = os.path.join(path,folder)
        if (os.path.isdir(folderPath)):
            for filename in os.listdir(folderPath):
                filePath = os.path.join(folderPath,filename)
                formatFilename = int(os.path.splitext(filename)[0])
                newFilename = folder+'_'+str(formatFilename)+'.jpg'
                newFilePath = os.path.join(dest,newFilename)
                if(os.path.isfile(filePath)):
                    shutil.copyfile(filePath,newFilePath)
                    #os.rename(filePath,newFilePath)
if __name__ == '__main__':
    args = arg_parse()
    pathToGT = args.groundtruth
    pathToImages = args.images
    pathToAnnotations = './annotations_val'
    pathToImgs = './images_val'
    if not os.path.exists(pathToAnnotations):
        os.makedirs(pathToAnnotations)
    if not os.path.exists(pathToImgs):
        os.makedirs(pathToImgs)
    createAnnotations(pathToGT,pathToAnnotations)
    createImages(pathToImages,pathToImgs)