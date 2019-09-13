# brightsign_simplefilenetworking_autoconfig
Autoconfiguration files for Brightsign LS423 Simple File Networking based on unique device ID

<p>
  The purpose of this is to be able to have 1 master config directory per Brightsign model that can be placed on the device and it will automatically connect to the LAN media server. 
</p>
<p>
  The folder on the server needs to be correlated to the device ID (the same as the serial #)<br>
  When the presentation is created in Bright Author Connected, it needs to use the same directory name and structure. I.e. everything should be placed in a folder called Presentation.
</p>
<strong> Server Directory Structure</strong><br>
SERVER ROOT<br>
- [Unique Device ID]<br>
-- Presentation
  
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
