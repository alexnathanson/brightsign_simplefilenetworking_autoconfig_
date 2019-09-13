# configure brightsign LS423 for simple networking

# TO BE USED WITH 'SD CARD - BACKUP' (not with the autosync version)

# TO RUN -> python configSDcard.py [srcDir (either "SD CARD - Backup" or "SD CARD - Auto")] [dstDir (usually D: )] [deviceID]
# Backup is the clean version from bright author
# Auto is my hacked version

import sys
import shutil
import os
import json

print ('Number of arguments:', len(sys.argv), 'arguments.')
print ('Argument List:', str(sys.argv))


srcDir = sys.argv[1]#'SD CARD - Backup'
srcDirs = srcDir + '\\'

#the destination folder, usually D:
copyDST = sys.argv[2]

#the device ID is the same as the serial number
#written on the back of the brightsign
deviceID = sys.argv[3]

# UPDATE THIS WITH YOUR SERVER IP!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
serverIP = 'http://' + sys.argv[4]+ '/' # you can also hardcode this 'http://[SERVER_IP]/Presentation
presentationFolder = '/Presentation'


if 'C:' not in copyDST:
    for root, directories, files in os.walk(srcDir):
        print('The current folder is ' + root) #folderName needs to be removed from all paths

        if srcDirs in root:
            newRoot = root.replace(srcDirs,'')
        elif srcDir in root:
            newRoot = root.replace(srcDir,'')
        print("new root: " + newRoot)

        #copy all the directories in SD CARD + their internal files
        for directory in directories:
            print('-SUBFOLDER OF ' + newRoot + ': ' + directory +'\\')
            shutil.copytree(root + '\\' + directory, 'D:\\'+ directory)
        
        #copy single files in root
        for file in files:
            '''
            only copy single files in the root directory,
            because the copytree function took care of internal files
            '''
            if len(newRoot) == 0:    
                shutil.copy(root + '\\' + file, 'D:\\' + file)
        print('')

    #update destination on server
    with open(copyDST+'\\'+'current-sync.json', 'r+') as f:
        data = json.load(f)

        print('Old server destination: ' + data['meta']['client']['base'])
        print('New server destination: ' + serverIP + deviceID + presentationFolder)
        
        data['meta']['client']['base'] = serverIP + deviceID + presentationFolder
        f.seek(0)        # <--- should reset file position to the beginning.
        json.dump(data, f, indent=4)
        f.truncate()     # remove remaining part
        
else:
    print("destination cannot be C:")
    print("Must be preformated exFat SD CARD")