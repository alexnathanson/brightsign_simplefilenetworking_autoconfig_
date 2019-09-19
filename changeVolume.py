
#adjust volume of brightsign over the network
#update volume on current-sync.json
with open(dstPresentation+'\\current-sync.json', 'r+') as f:
	data = json.load(f)
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
f.seek(0) # <--- should reset file position to the beginning.
json.dump(data, f, indent=4)
f.truncate() # remove remaining part