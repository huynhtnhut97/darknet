import os

val = []
train = []
# for file in os.listdir("/home/nhuthuynh/darknet_alexeyAB/darknet/data/images_val/"):
# 	val.append(file)
# for file in os.listdir("/home/nhuthuynh/darknet_alexeyAB/darknet/data/images/"):
# 	train.append(file)
# for item_val in val:
# 	for item_train in train:
# 		print(item_val)
# 		print(item_train)
# 		if (item_train==item_val):
# 			print("Collapsed")
txtVal = open("train.txt",'r')
lines = txt_file.read().split('\n')
for line in lines:
	 