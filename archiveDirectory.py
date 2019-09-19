
import sys
import shutil
import os
from datetime import datetime

defaultDst = 'C:/inetpub/wwwroot/presentationArchive/'

#the source presentation folder
try:
	src = sys.argv[1]
except:
	print("No source specified")
	exit()

try:
	dst = sys.argv[2] + "/" +str(int(datetime.now().timestamp()))
except:
	dst = defaultDst + "/" + str(int(datetime.now().timestamp()))
	print("No destination specified - using default destination: " + defaultDst	)


	#print ('Number of arguments:', len(sys.argv), 'arguments.')
	#print ('Argument List:', str(sys.argv))

print(str(int(datetime.now().timestamp())))	

print (dst)

#archive old directory
try:
    shutil.copytree(src, dst)
except:
   	print("Error while copying")