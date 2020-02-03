import os

def arg_parse():
    """
    Parse arguements to the detect module
    
    """
    
    
    parser = argparse.ArgumentParser(description='YOLO v3 Video Detection Module')
   
    parser.add_argument("--videoPath", dest = 'video', help = 
                        "Video to run detection upon",
                        default = "video.avi", type = str)
     
    return parser.parse_args()

def get_video_from_visdrone(path):
	for item in os.listdir(path):
		folder = os.path.join(path,item)
		if not os.path.isfile(folder) and item=="sequences":
			listVideo = []
			for vid in os.listdir(folder):
				video = []
				videoFrames = []
				videoPath = os.path.join(folder,vid)
				for frame in os.listdir(videoPath):
					if(os.path.isfile(os.path.join(videoPath,frame))):
						videoFrames.append(frame)
				video.append(videoPath)
				video.append(videoFrames)
				listVideo.append(video)
	return listVideo


