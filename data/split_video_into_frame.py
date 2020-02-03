import os
import cv2 as cv
import argparse
def arg_parse():
	"""
	Parse arguements to the detect module
	
	"""
	parser = argparse.ArgumentParser(description='YOLO v3 Video Detection Module')
   
	parser.add_argument("--videopath", dest = 'videopath',
						default = "video.avi", type = str)
	parser.add_argument("--framespath", dest = 'framespath',
						default = "video.avi", type = str)
	return parser.parse_args()
def split_video(input,output):
	cap = cv.VideoCapture(input)
	success = True
	index = 0
	while(success):
		print("writing frame {}".format(index))
		success,frame = cap.read()
		frame_name = os.path.splitext(os.path.basename(input))[0]+'_'+str(index)+'.jpg'
		index+=1
		filePath = os.path.join(output,frame_name)
		cv.imwrite(filePath,frame)
if __name__=="__main__":
	args = arg_parse()
	videopath = args.videopath
	framespath = args.framespath
	split_video(videopath,framespath)