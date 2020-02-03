import argparse

parser = argparse.ArgumentParser(description='YOLO v3 Video Detection Module')
   
    parser.add_argument("--source", dest = 'dest', help = "Tracker to use", default = "csrt", type = str)
    #parser.add_argument("--alertobj", dest = 'tracker_name', help = "Tracker to use", default = "csrt", type = str)
    
    return parser.parse_args()