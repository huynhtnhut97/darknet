import time
import json
import argparse
import os
from operator import itemgetter
##Format annotations to x,y,width,height
def arg_parse():
    """
    Parse arguements to the detect module
    
    """
    parser = argparse.ArgumentParser(description='YOLO v3 Video Detection Module')
   
    parser.add_argument("--gtpath", dest = 'groundtruth',
                        default = "video.avi", type = str)
    parser.add_argument("--imagespath", dest = 'images',
                        default = "video.avi", type = str)
    return parser.parse_args()
if __name__ == '__main__':
    args = arg_parse()
    path = args.groundtruth
    ground_truth = []
    
    for filename in os.listdir(path):
        ground_truth = []
        frameID = 0
        filePath = os.path.join(path,filename)
        if (os.path.isfile(filePath)):
            with open(os.path.join(path,filename), 'r') as f:
                for line in f:
                    (frame_id,target_id,bbox_left,bbox_top,bbox_width,bbox_height,score,object_category,truncation,occlusion ) = map(int,(line.split(',')))
                    #if(object_category!=0 and object_category !=11):
                    if(object_category!=0 and object_category!=11):
                        ground_truth.append(list((frame_id,target_id,bbox_left,bbox_top,bbox_width,bbox_height,score,object_category,truncation,occlusion)))
            sortedList = sorted(ground_truth, key=itemgetter(0))
            for obj in sortedList:
                current_FrameID = obj[0]
                bbox_left = obj[2]
                bbox_top = obj[3]
                bbox_width = obj[4]
                bbox_height = obj[5]
                object_category = obj[7]
                pathtoDir = os.path.join(path,os.path.splitext(filename)[0])
                if(current_FrameID>frameID):
                    frameID = current_FrameID
                    if not os.path.exists(pathtoDir):
                        os.makedirs(pathtoDir)
                    txtFile = open(os.path.join(pathtoDir,str(current_FrameID)+'.txt'),'w')
                txtFile.write(str(object_category)+ ' ' +str(bbox_left)+ ' ' +str(bbox_top)+ ' ' +str(bbox_width)+ ' ' +str(bbox_height))
                txtFile.write('\n')
            print("Total frames in video {} is {}".format(os.path.splitext(filename)[0],frameID))