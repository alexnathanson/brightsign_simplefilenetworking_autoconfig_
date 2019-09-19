# configure brightsign LS423 for simple networking

# USE FORWARD SLASHES...
# to run -> python configServerPresentation.py [srcDirectory] [dstDirectory] [deviceID] [server ip]

import sys
import shutil
import os
import json

print ('Number of arguments:', len(sys.argv), 'arguments.')
print ('Argument List:', str(sys.argv))

#the source presentation folder
srcPresentation = sys.argv[1]

#the device ID is the same as the serial number
#written on the back of the brightsign
deviceID = sys.argv[3]
serverIP = 'http://' + sys.argv[4] + '/'
presentationFolder = '/Presentation'

srcDir = 'SD CARD - Backup'
srcDirs = srcDir + '\\'

dstPresentation = sys.argv[2] + deviceID + presentationFolder

archiveDirectory = "presentationArchive/"
'''
#archive old directory
try:
    shutil.copytree(dstPresentation, archiveDirectory + deviceID)
'''
#copy directory
shutil.copytree(srcPresentation, dstPresentation)

print(srcPresentation + " has been copied to " + dstPresentation)

#update directory on current-sync.json
with open(dstPresentation+'\\current-sync.json', 'r+') as f:
    data = json.load(f)

    #print('Old server destination: ' + data['meta']['client']['base'])
    #print('New server destination: ' + serverIP + deviceID + presentationFolder)
    
    #this will be present in all presentations
    data['meta']['client']['base'] = serverIP + deviceID + presentationFolder
    
    #print("Updates needed: " + len(data['files']['download']))
    print(len(data['files']['download']))

    for links in data['files']['download']:
        #print(data['files']['download'][links])
        uniqueSufix = links['link'].find(presentationFolder) + len(presentationFolder)
        #print("Start: " + str(startReplace) + " + " + str(len(serverIP)) + " = " + str(startReplace+len(serverIP)))
        #endReplace = links['link'].find(presentationFolder)

        #print(links['link'][uniqueSufix:])
        links['link'] = serverIP +deviceID+presentationFolder + links['link'][uniqueSufix:]
        print(links['link'])
    
    #the amount of files 
    
    f.seek(0)        # <--- should reset file position to the beginning.
    json.dump(data, f, indent=4)
    f.truncate()     # remove remaining part
    