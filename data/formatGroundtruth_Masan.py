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
    parser.add_argument("--annopath", dest = 'annopath',
                        default = "video.avi", type = str)
    return parser.parse_args()
def chunks(l,n):
    """Yield successive n-sized chunks from l."""
    # for i in range(0, len(l), n):
    #     yield l[i:i + n]
    n = max(1, n)
    #print(l)
    #print(n)
    return (l[i:i+n] for i in range(0, len(l), n))
if __name__ == '__main__':
    args = arg_parse()
    path = args.groundtruth
    annopath = args.annopath
    
    
    for filename in os.listdir(path):
        #ground_truth = []
        #frameID = 0
        filePath = os.path.join(path,filename)
        #print(os.path.splitext(filename)[1])
        if (os.path.isfile(filePath) and os.path.splitext(filename)[1]=='.txt'):
            frame_id = 0
            ground_truth = []
            print("entered here")
            with open(filePath, 'r') as f:
                for line in f:
                    #(frame_id,target_id,bbox_left,bbox_top,bbox_width,bbox_height,score,object_category,truncation,occlusion ) = map(int,(line.split(',')))
                    #if(object_category!=0 and object_category !=11):
                    #print(line)
                    line = line.strip('\n')
                    #print(line)
                    line = line.split(' ')
                    #print(len(line))
                    if len(line)==1:
                        #print("quan que")
                        continue
                        frame_id+=1
                        #n = len(line)/5
                        #print(n)
                    objects=list(chunks(line,int(5)))
                    print(objects)
                    frame_name = os.path.splitext(filename)[0][:-3]+'_'+str(frame_id)+'.txt'
                    frame_id+=1
                    with open(os.path.join(annopath,frame_name),'w') as fr:
                        for obj in objects:
                            bbox_left = obj[1]
                            bbox_top = obj[2]
                            bbox_right = obj[3]
                            bbox_bottom = obj[4]
                            fr.write(str('1')+' '+str(bbox_left)+ ' ' +str(bbox_top)+ ' ' +str(bbox_right)+ ' ' +str(bbox_bottom))
                            fr.write('\n')

                        #(target_id,bbox_left,bbox_top,bbox_right,bbox_bottom)= map(int,(obj))
                    #if(object_category!=0 and object_category !=11):
                    #if(object_category==1 or object_category==2):
                        #ground_truth.append(list((frame_id,target_id,bbox_left,bbox_top,bbox_right,bbox_bottom)))
                    
                    
                        # for item in ground_truth:
                        #     bbox_left = obj[2]
                        #     bbox_top = obj[3]
                        #     bbox_right = obj[4]
                        #     bbox_bottom = obj[5]

            # sortedList = sorted(ground_truth, key=itemgetter(0))
            # for obj in sortedList:
            #     current_FrameID = obj[0]
            #     bbox_left = obj[2]
            #     bbox_top = obj[3]
            #     bbox_width = obj[4]
            #     bbox_height = obj[5]
            #     object_category = obj[7]
            #     pathtoDir = os.path.join(path,os.path.splitext(filename)[0])
            #     if(current_FrameID>frameID):
            #         frameID = current_FrameID
            #         if not os.path.exists(pathtoDir):
            #             os.makedirs(pathtoDir)
            #         txtFile = open(os.path.join(pathtoDir,str(current_FrameID)+'.txt'),'w')
            #     txtFile.write(str(object_category)+ ' ' +str(bbox_left)+ ' ' +str(bbox_top)+ ' ' +str(bbox_width)+ ' ' +str(bbox_height))
            #     txtFile.write('\n')
            print("Total frames in video {} is {}".format(os.path.splitext(filename)[0],frame_id))