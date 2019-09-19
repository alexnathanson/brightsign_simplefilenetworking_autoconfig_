# brightsign_simplefilenetworking_autosync
Automatically syncs Brightsign LS423 players to a server directory that matches that particular device's unique ID for Simple File Networking.

<p>
  The purpose of this is to be able to have 1 master config directory that can be quickly put on all of your Brightsign client devices (via an exFat formatted SD card) without any tweaks. The media assests and presentation will be automatically pulled from the server. 
</p>
<p>
  The folder on the server needs to be correlated to the device ID (the same as the serial #)<br>
  When the presentation is created in Bright Author Connected, it needs to use the same directory name and structure i.e. everything should be placed in a folder called Presentation.
</p>
<strong> Server Directory Structure</strong><br>
SERVER ROOT<br>
- [Unique Device ID]<br>
-- Presentation

## Note:
The initial config directory for Brightsign includes a number of empty directories. In order for them to be tracked by Git and included here, I haved added empty .gitignore files to all 4 (brightsign-dumps, feed_cache, feedPool, and pool). You will probably need delete these prior to putting them on a device.

## UPDATED FILES:
* setupNetworkDiagnostics.brs
* autorun.brs
* setupCommon.brs

Also, base should just be the server root folder.<br>
The / at the end is important<br>
"base": "http://[SERVER IP ADDRESS]/",

<p>
roDeviceInfo is a built-in object. Documentation is at https://developer.roku.com/docs/references/brightscript/components/rodeviceinfo.md<br>
The full structure of the base link should be http://[SERVER_IP]/[UNIQUE_DEVICE_ID]/Presentation
  </p>

## setupNetworkDiagnostics.brs
* line 21 - On the network diagnostics screen background of text should be green
* line 100 - and the title should read  "Network Diagnostics?!?!?!?!"

## autorun.brs
* added lines 1659 - 1674

<p>
runIdObject = CreateObject("roDeviceInfo") <br>
baseURL$ = setupSync.LookupMetadata("client", "base") + runIdObject.GetDeviceUniqueId() + "/Presentation"
</p>

## setupCommon.brs
* added lines 6 - 21

<p>
 idObject = CreateObject("roDeviceInfo")<br>
 setupParams.base = setup_sync.LookupMetadata("client", "base") + idObject.GetDeviceUniqueId() + "/Presentation"
</p>

# finding Brightsigns on the LAN

<p>
All brightsign devices should have MAC addresses within the range of<br>
90:AC:3F:00:00:00 ====> 90:AC:3F:FF:FF:FF
</p>

<p>
	arp -a | findstr 90-ac-3f
</p>

# Manually Syncing Devices
Devices can be manually synced by using the 'SD CARD - Backup' directory
* manually edit the current-sync.json file with the full server directory path and drag that to the SD card or use configSDcard.py to programmatically copy all the files to an SD card and update the base

# Preparing Presentations

* Make sure the presentation is set to Simple File Networking
* Make sure the presentation and schedule is saved with the same directory structure as the server i.e. everything should be in a folder called Presentation
* If you're making a new presentation, the easiest thing to do is set the URL for web folder on the Schedule page under unit configuration.<br>
** It should be structured like http://[SERVER_IP]/[DEVICE_ID]/Presentation
* Presentations can be prepared without necessarily knowing the final Brightsign ID or the server destination.<br>
** In this case the server directory listed in presentation files will need to be updated to coorespond with the device ID
** you can use configServerPresentation.py to automate this update

# Setting up the server
* Must add MIME types (https://brightsign.zendesk.com/hc/en-us/articles/218067517-Simple-File-Network-troubleshooting)