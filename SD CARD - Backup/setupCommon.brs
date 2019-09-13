Sub ParseAutoplayCommon(setupParams as object, setup_sync as object)
  
  setupParams.base = setup_sync.LookupMetadata("client", "base")
  setupParams.recoveryHandler = setup_sync.LookupMetadata("client", "recoveryHandler")
  setupParams.recoverySetup = setup_sync.LookupMetadata("client", "recoverySetup")
  setupParams.next = setup_sync.LookupMetadata("client", "next")
  setupParams.event = setup_sync.LookupMetadata("client", "event")
  setupParams.error = setup_sync.LookupMetadata("client", "error")
  setupParams.deviceError = setup_sync.LookupMetadata("client", "deviceError")
  setupParams.deviceDownload = setup_sync.LookupMetadata("client", "deviceDownload")
  setupParams.deviceDownloadProgress = setup_sync.LookupMetadata("client", "deviceDownloadProgress")
  setupParams.trafficDownload = setup_sync.LookupMetadata("client", "trafficDownload")
  setupParams.uploadLogs = setup_sync.LookupMetadata("client", "uploadLogs")
  setupParams.batteryCharger = setup_sync.LookupMetadata("client", "batteryCharger")
  setupParams.heartbeat = setup_sync.LookupMetadata("client", "heartbeat")
  
  setupParams.account = setup_sync.LookupMetadata("server", "account")
  setupParams.bsnRegistrationToken = setup_sync.LookupMetadata("server", "bsnRegistrationToken")
  setupParams.user = setup_sync.LookupMetadata("server", "user")
  setupParams.password = setup_sync.LookupMetadata("server", "password")
  setupParams.group = setup_sync.LookupMetadata("server", "group")
  setupParams.enableUnsafeAuthentication = setup_sync.LookupMetadata("server", "enableUnsafeAuthentication")
  
  setupParams.endpoints_s3Url = setup_sync.LookupMetadata("server", "endpoints_s3Url")
  setupParams.endpoints_provisionServer = setup_sync.LookupMetadata("server", "endpoints_provisionServer")
  setupParams.endpoints_bsnServer = setup_sync.LookupMetadata("server", "endpoints_bsnServer")
  setupParams.endpoints_websocketsDWS = setup_sync.LookupMetadata("server", "endpoints_websocketsDWS")
  setupParams.endpoints_bsnApiServer = setup_sync.LookupMetadata("server", "endpoints_bsnApiServer")
  setupParams.endpoints_certsServer = setup_sync.LookupMetadata("server", "endpoints_certsServer")

  setupParams.bsn_base = setup_sync.LookupMetadata("server", "bsn_base")
  setupParams.bsn_next = setup_sync.LookupMetadata("server", "bsn_next")
  
  setupParams.unitName$ = setup_sync.LookupMetadata("client", "unitName")
  setupParams.unitNamingMethod$ = setup_sync.LookupMetadata("client", "unitNamingMethod")
  setupParams.unitDescription$ = setup_sync.LookupMetadata("client", "unitDescription")
  setupParams.timezone$ = setup_sync.LookupMetadata("client", "timeZone")
  setupParams.timeServer$ = setup_sync.LookupMetadata("client", "timeServer")
  
  setupParams.remoteDwsEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "remoteDwsEnabled"))
  
  setupParams.dwsEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "dwsEnabled"))
  setupParams.dwsPassword$ = setup_sync.LookupMetadata("client", "dwsPassword")
  
  setupParams.lwsConfig$ = setup_sync.LookupMetadata("client", "lwsConfig")
  setupParams.lwsEnableUpdateNotifications = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "lwsEnableUpdateNotifications"))
  setupParams.lwsUserName$ = setup_sync.LookupMetadata("client", "lwsUserName")
  setupParams.lwsPassword$ = setup_sync.LookupMetadata("client", "lwsPassword")
  
  setupParams.bsnCloudEnabled = IsTruthy(setup_sync.LookupMetadata("client", "bsnCloudEnabled"))  
  
  ParseJsonLogging(setupParams, setup_sync)
  
  setupParams.enableRemoteSnapshot = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "deviceScreenShotsEnabled"))
  setupParams.remoteSnapshotInterval% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "deviceScreenShotsInterval"))
  setupParams.remoteSnapshotMaxImages% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "deviceScreenShotsCountLimit"))
  setupParams.remoteSnapshotJpegQualityLevel% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "deviceScreenShotsQuality"))
  setupParams.remoteSnapshotDisplayPortrait = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "deviceScreenShotsDisplayPortrait"))
  
  setupParams.useDHCP = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "useDHCP"))
  setupParams.rateLimitModeOutsideWindow = setup_sync.LookupMetadata("client", "rateLimitModeOutsideWindow")
  setupParams.rateLimitRateOutsideWindow = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "rateLimitRateOutsideWindow"))
  setupParams.rateLimitModeInWindow = setup_sync.LookupMetadata("client", "rateLimitModeInWindow")
  setupParams.rateLimitRateInWindow = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "rateLimitRateInWindow"))
  setupParams.rateLimitModeInitialDownloads = setup_sync.LookupMetadata("client", "rateLimitModeInitialDownloads")
  setupParams.rateLimitRateInitialDownloads = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "rateLimitRateInitialDownloads"))
  setupParams.uploadLogFilesAtBoot = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "uploadLogFilesAtBoot"))
  setupParams.uploadLogFilesAtSpecificTime = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "uploadLogFilesAtSpecificTime"))
  setupParams.uploadLogFilesTime% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "uploadLogFilesTime"))
  setupParams.idleScreenColor$ = setup_sync.LookupMetadata("client", "idleScreenColor")
  setupParams.lwsUserName$ = setup_sync.LookupMetadata("client", "lwsUserName")
  setupParams.lwsPassword$ = setup_sync.LookupMetadata("client", "lwsPassword")
  
  setupParams.specifyHostname = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "specifyHostname"))
  setupParams.hostName$ = setup_sync.LookupMetadata("client", "hostname")
  
  setupParams.useWireless = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "useWireless"))
  setupParams.ssid$ = setup_sync.LookupMetadata("client", "ssid")
  setupParams.passphrase$ = setup_sync.LookupMetadata("client", "passphrase")
  
  setupParams.useProxy = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "useProxy"))
  setupParams.proxy$ = setup_sync.LookupMetadata("client", "proxy")
  setupParams.proxySpec$ = setupParams.proxy$
  
  setupParams.networkConnectionPriorityWired% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "networkConnectionPriorityWired"))
  setupParams.networkConnectionPriorityWireless% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "networkConnectionPriorityWireless"))
  setupParams.contentDataTypeEnabledWired = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "contentDataTypeEnabledWired"))
  setupParams.textFeedsDataTypeEnabledWired = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "textFeedsDataTypeEnabledWired"))
  setupParams.healthDataTypeEnabledWired = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "healthDataTypeEnabledWired"))
  setupParams.mediaFeedsDataTypeEnabledWired = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "mediaFeedsDataTypeEnabledWired"))
  setupParams.logUploadsXfersEnabledWired = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "logUploadsXfersEnabledWired"))
  setupParams.contentDataTypeEnabledWireless = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "contentDataTypeEnabledWireless"))
  setupParams.textFeedsDataTypeEnabledWireless = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "textFeedsDataTypeEnabledWireless"))
  setupParams.healthDataTypeEnabledWireless = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "healthDataTypeEnabledWireless"))
  setupParams.mediaFeedsDataTypeEnabledWireless = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "mediaFeedsDataTypeEnabledWireless"))
  setupParams.logUploadsXfersEnabledWireless = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "logUploadsXfersEnabledWireless"))
  setupParams.networkDiagnosticsEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "networkDiagnosticsEnabled"))
  setupParams.testEthernetEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "testEthernetEnabled"))
  setupParams.testWirelessEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "testWirelessEnabled"))
  setupParams.testInternetEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "testInternetEnabled"))
  setupParams.useCustomSplashScreen = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "useCustomSplashScreen"))
  
  setupParams.configVersion$ = setup_sync.LookupMetadata("client", "configVersion")
  
  setupParams.sfnUserName$ = setup_sync.LookupMetadata("client", "sfnUserName")
  setupParams.sfnPassword$ = setup_sync.LookupMetadata("client", "sfnPassword")
  setupParams.timeBetweenNetConnects% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "timeBetweenNetConnects"))
  setupParams.timeBetweenHeartbeats% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "timeBetweenHeartbeats"))
  setupParams.heartbeatsRestricted = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "heartbeatsRestricted"))
  setupParams.heartbeatsRangeStart% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "heartbeatsRangeStart"))
  setupParams.heartbeatsRangeLength% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "heartbeatsRangeLength"))
  
  setupParams.staticIPAddress = setup_sync.LookupMetadata("client", "staticIPAddress")
  setupParams.subnetMask = setup_sync.LookupMetadata("client", "subnetMask")
  setupParams.gateway = setup_sync.LookupMetadata("client", "gateway")
  setupParams.dns1 = setup_sync.LookupMetadata("client", "dns1")
  setupParams.dns2 = setup_sync.LookupMetadata("client", "dns2")
  setupParams.dns3 = setup_sync.LookupMetadata("client", "dns3")
  
  setupParams.useDHCP_2 = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "useDHCP_2"))
  
  setupParams.staticIPAddress_2 = setup_sync.LookupMetadata("client", "staticIPAddress_2")
  setupParams.subnetMask_2 = setup_sync.LookupMetadata("client", "subnetMask_2")
  setupParams.gateway_2 = setup_sync.LookupMetadata("client", "gateway_2")
  setupParams.dns1_2 = setup_sync.LookupMetadata("client", "dns1_2")
  setupParams.dns2_2 = setup_sync.LookupMetadata("client", "dns2_2")
  setupParams.dns3_2 = setup_sync.LookupMetadata("client", "dns3_2")
  
  setupParams.rateLimitModeOutsideWindow_2 = setup_sync.LookupMetadata("client", "rateLimitModeOutsideWindow_2")
  setupParams.rateLimitRateOutsideWindow_2 = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "rateLimitRateOutsideWindow_2"))
  setupParams.rateLimitModeInWindow_2 = setup_sync.LookupMetadata("client", "rateLimitModeInWindow_2")
  setupParams.rateLimitRateInWindow_2 = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "rateLimitRateInWindow_2"))
  setupParams.rateLimitModeInitialDownloads_2 = setup_sync.LookupMetadata("client", "rateLimitModeInitialDownloads_2")
  setupParams.rateLimitRateInitialDownloads_2 = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "rateLimitRateInitialDownloads_2"))
  ''    setupParams.networkHosts : Array<string>
  setupParams.networkHosts = []
  setupParams.uploadLogs = setup_sync.LookupMetadata("client", "uploadLogs")
  setupParams.uploadSnapshots = setup_sync.LookupMetadata("client", "uploadSnapshots")
  setupParams.contentDownloadsRestricted = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "contentDownloadsRestricted"))
  setupParams.contentDownloadRangeStart% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "contentDownloadRangeStart"))
  setupParams.contentDownloadRangeLength% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "contentDownloadRangeLength"))
  setupParams.heartbeatsRangeStart% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "heartbeatsRangeStart"))
  setupParams.heartbeatsRangeLength% = GetNumberFromNumericString(setup_sync.LookupMetadata("client", "heartbeatsRangeLength"))
  setupParams.usbUpdatePassword$ = setup_sync.LookupMetadata("client", "usbUpdatePassword")
  setupParams.brightWallName = setup_sync.LookupMetadata("client", "BrightWallName")
  setupParams.brightWallScreenNumber = setup_sync.LookupMetadata("client", "BrightWallScreenNumber")
  
end sub


Sub ParseJsonLogging(setupParams as object, setup_sync as object)
  
  setupParams.playbackLoggingEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "playbackLoggingEnabled"))
  setupParams.stateLoggingEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "stateLoggingEnabled"))
  setupParams.eventLoggingEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "eventLoggingEnabled"))
  setupParams.diagnosticLoggingEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "diagnosticLoggingEnabled"))
  setupParams.variableLoggingEnabled = GetBoolFromNumericString(setup_sync.LookupMetadata("client", "variableLoggingEnabled"))
  
end sub


Sub CheckStorageDeviceIsWritable()
  
  ' determine if the storage device is writable
  tmpFileName$ = "bs~69-96.txt"
  WriteAsciiFile(tmpFileName$, "1")
  readValue$ = ReadAsciiFile(tmpFileName$)
  if len(readValue$) = 1 and readValue$ = "1" then
    DeleteFile(tmpFileName$)
  else
    videoMode = CreateObject("roVideoMode")
    resX = videoMode.GetResX()
    resY = videoMode.GetResY()
    videoMode = invalid
    
    r = CreateObject("roRectangle", 0, 0, resX, resY)
    twParams = CreateObject("roAssociativeArray")
    twParams.LineCount = 1
    twParams.TextMode = 2
    twParams.Rotation = 0
    twParams.Alignment = 1
    tw = CreateObject("roTextWidget", r, 1, 2, twParams)
    tw.PushString("")
    tw.Show()
    
    r = CreateObject("roRectangle", 0, resY / 2 - resY / 32, resX, resY / 32)
    tw = CreateObject("roTextWidget", r, 1, 2, twParams)
    tw.PushString("The attached storage device is write protected.")
    tw.Show()
    
    r2 = CreateObject("roRectangle", 0, resY / 2, resX, resY / 32)
    tw2 = CreateObject("roTextWidget", r2, 1, 2, twParams)
    tw2.PushString("Remove it, enable writing, and reboot the device.")
    tw2.Show()
    
    msgPort = CreateObject("roMessagePort")
    msg = wait(0, msgPort)
  end if
  
end sub


Sub CheckFirmwareVersion()
  
  modelObject = CreateObject("roDeviceInfo")
  
  ' check to see whether or not the current firmware meets the minimum compatibility requirements
  versionNumber% = modelObject.GetVersionNumber()
  
  if modelObject.GetFamily() = "pantera" then
    minVersionNumber% = 393741
    minVersion$ = "6.2.13"
  else if modelObject.GetFamily() = "pagani" then
    minVersionNumber% = 459275
    minVersion$ = "7.2.11"
  else if modelObject.GetFamily() = "impala" then
    minVersionNumber% = 393741
    minVersion$ = "6.2.13"
  else if modelObject.GetFamily() = "malibu" then
    minVersionNumber% = 459041
    minVersion$ = "7.1.33"
  else if modelObject.GetFamily() = "tiger" then
    minVersionNumber% = 327952
    minVersion$ = "5.1.16"
  else if modelObject.GetFamily() = "lynx" then
    minVersionNumber% = 327952
    minVersion$ = "5.1.16"
  else
    minVersionNumber% = 199435
    minVersion$ = "3.11.11"
  end if
  
  if versionNumber% < minVersionNumber% then
    videoMode = CreateObject("roVideoMode")
    resX = videoMode.GetResX()
    resY = videoMode.GetResY()
    videoMode = invalid
    r = CreateObject("roRectangle", 0, resY / 2 - resY / 64, resX, resY / 32)
    twParams = CreateObject("roAssociativeArray")
    twParams.LineCount = 1
    twParams.TextMode = 2
    twParams.Rotation = 0
    twParams.Alignment = 1
    tw = CreateObject("roTextWidget", r, 1, 2, twParams)
    tw.PushString("Firmware needs to be upgraded to " + minVersion$ + " or greater")
    tw.Show()
    msgPort = CreateObject("roMessagePort")
    gpioPort = CreateObject("roGpioControlPort")
    gpioPort.SetPort(msgPort)
    while true
      msg = wait(0, msgPort)
      if type(msg) = "roGpioButton" and msg.GetInt() = 12 then
        stop
      end if
    end while
  end if
  
end sub


Sub ClearRegistryKeys(registrySection as object)
  
  ' Clear legacy registry keys
  registrySection.Delete("next")
  registrySection.Delete("event")
  registrySection.Delete("error")
  registrySection.Delete("deviceerror")
  registrySection.Delete("devicedownload")
  registrySection.Delete("recurl")
  registrySection.Delete("timezone")
  registrySection.Delete("unitName")
  registrySection.Delete("unitNamingMethod")
  registrySection.Delete("unitDescription")
  registrySection.Delete("timeBetweenNetConnects")
  registrySection.Delete("contentDownloadsRestricted")
  registrySection.Delete("contentDownloadRangeStart")
  registrySection.Delete("contentDownloadRangeLength")
  registrySection.Delete("useDHCP")
  registrySection.Delete("staticIPAddress")
  registrySection.Delete("subnetMask")
  registrySection.Delete("gateway")
  registrySection.Delete("broadcast")
  registrySection.Delete("dns1")
  registrySection.Delete("dns2")
  registrySection.Delete("dns3")
  registrySection.Delete("timeServer")
  registrySection.Delete("account")
  registrySection.Delete("user")
  registrySection.Delete("password")
  registrySection.Delete("group")
  
  ' Clear other keys in case they're no longer used
  registrySection.Delete("cdrs")
  registrySection.Delete("cdrl")
  registrySection.Delete("ps")
  registrySection.Delete("ss")
  registrySection.Delete("pp")
  registrySection.Delete("ncp2")
  registrySection.Delete("cwf")
  registrySection.Delete("twf")
  registrySection.Delete("hwf")
  registrySection.Delete("mwf")
  registrySection.Delete("lwf")
  registrySection.Delete("sip")
  registrySection.Delete("sip")
  registrySection.Delete("sm")
  registrySection.Delete("gw")
  registrySection.Delete("d1")
  registrySection.Delete("d2")
  registrySection.Delete("d3")
  registrySection.Delete("rlmow")
  registrySection.Delete("rlrow")
  registrySection.Delete("rlmiw")
  registrySection.Delete("rlriw")
  registrySection.Delete("rlmid")
  registrySection.Delete("rlrid")
  registrySection.Delete("sip2")
  registrySection.Delete("sm2")
  registrySection.Delete("gw2")
  registrySection.Delete("d12")
  registrySection.Delete("d22")
  registrySection.Delete("d32")
  registrySection.Delete("rlmow2")
  registrySection.Delete("rlrow2")
  registrySection.Delete("rlmiw2")
  registrySection.Delete("rlriw2")
  registrySection.Delete("rlmid2")
  registrySection.Delete("rlrid2")
  registrySection.Delete("uup")
  registrySection.Delete("cfv")
  
  registrySection.Delete("brightWallName")
  registrySection.Delete("brightWallScreenNumber")
  
  registrySection.Delete("beacon1")
  registrySection.Delete("beacon2")
  
  registrySection.Delete("susse")

end sub


Function GetRateLimits(setupParams as object, rateLimitModeKey$ as string, rateLimitRateKey$ as string)
  
  rateLimitModeSpec$ = setupParams[rateLimitModeKey$]
  
  rateLimitMode$ = "default"
  rateLimitRate$ = "0"
  rateLimitRate% = -1
  
  if rateLimitModeSpec$ = "unlimited" then
    rateLimitMode$ = "unlimited"
    rateLimitRate% = 0
  else if rateLimitModeSpec$ = "specified" then
    rateLimitMode$ = "specified"
    rateLimitRate$ = setupParams[rateLimitRateKey$]
    rateLimitRate% = int(val(rateLimitRate$))
  end if
  
  rateLimits = { }
  rateLimits.rateLimitMode$ = rateLimitMode$
  rateLimits.rateLimitRate$ = rateLimitRate$
  rateLimits.rateLimitRate% = rateLimitRate%
  
  return rateLimits
  
end function


Function SetNetworkConfiguration(setupParams as object, registrySection as object, keySuffix$ as string, registrySuffix$ as string)
  
  networkingParameters = { }
  
  networkingParameters.useDHCP = setupParams["useDHCP" + keySuffix$]
  
  if not networkingParameters.useDHCP then
    networkingParameters.staticIPAddress$ = setupParams["staticIPAddress" + keySuffix$]
    networkingParameters.subnetMask$ = setupParams["subnetMask" + keySuffix$]
    networkingParameters.gateway$ = setupParams["gateway" + keySuffix$]
    networkingParameters.dns1$ = setupParams["dns1" + keySuffix$]
    networkingParameters.dns2$ = setupParams["dns2" + keySuffix$]
    networkingParameters.dns3$ = setupParams["dns3" + keySuffix$]
    
    registrySection.Write("dhcp" + registrySuffix$, "no")
    registrySection.Write("sip" + registrySuffix$, networkingParameters.staticIPAddress$)
    registrySection.Write("sm" + registrySuffix$, networkingParameters.subnetMask$)
    registrySection.Write("gw" + registrySuffix$, networkingParameters.gateway$)
    registrySection.Write("d1" + registrySuffix$, networkingParameters.dns1$)
    registrySection.Write("d2" + registrySuffix$, networkingParameters.dns2$)
    registrySection.Write("d3" + registrySuffix$, networkingParameters.dns3$)
  else
    registrySection.Write("dhcp" + registrySuffix$, "yes")
  end if
  
  rateLimits = GetRateLimits(setupParams, "rateLimitModeOutsideWindow" + keySuffix$, "rateLimitRateOutsideWindow" + keySuffix$)
  rlmow$ = rateLimits.rateLimitMode$
  rlrow$ = rateLimits.rateLimitRate$
  
  rateLimits = GetRateLimits(setupParams, "rateLimitModeInWindow" + keySuffix$, "rateLimitRateInWindow" + keySuffix$)
  rlmiw$ = rateLimits.rateLimitMode$
  rlriw$ = rateLimits.rateLimitRate$
  
  rateLimits = GetRateLimits(setupParams, "rateLimitModeInitialDownloads" + keySuffix$, "rateLimitRateInitialDownloads" + keySuffix$)
  rlmid$ = rateLimits.rateLimitMode$
  rlrid$ = rateLimits.rateLimitRate$
  networkingParameters.rl% = rateLimits.rateLimitRate%
  
  registrySection.Write("rlmow" + registrySuffix$, rlmow$)
  registrySection.Write("rlrow" + registrySuffix$, rlrow$)
  registrySection.Write("rlmiw" + registrySuffix$, rlmiw$)
  registrySection.Write("rlriw" + registrySuffix$, rlriw$)
  registrySection.Write("rlmid" + registrySuffix$, rlmid$)
  registrySection.Write("rlrid" + registrySuffix$, rlrid$)
  
  return networkingParameters
  
end function


Sub SetLogging(setupParams as object, registrySection as object)
  
  if type(registrySection) = "roRegistrySection" then
    registrySection.Write("ple", GetYesNoFromBoolean(setupParams.playbackLoggingEnabled))
    registrySection.Write("ele", GetYesNoFromBoolean(setupParams.eventLoggingEnabled))
    registrySection.Write("sle", GetYesNoFromBoolean(setupParams.stateLoggingEnabled))
    registrySection.Write("dle", GetYesNoFromBoolean(setupParams.diagnosticLoggingEnabled))
    registrySection.Write("vle", GetYesNoFromBoolean(setupParams.variableLoggingEnabled))
    registrySection.Write("uab", GetYesNoFromBoolean(setupParams.uploadLogFilesAtBoot))
    registrySection.Write("uat", GetYesNoFromBoolean(setupParams.uploadLogFilesAtSpecificTime))
    registrySection.Write("ut", GetNumericStringFromNumber(setupParams.uploadLogFilesTime%))
  end if
  
end sub


Function GetModelSupportsWifi()
  
  modelSupportsWifi = false
  nc = CreateObject("roNetworkConfiguration", 1)
  if type(nc) = "roNetworkConfiguration" then
    currentConfig = nc.GetCurrentConfig()
    if type(currentConfig) = "roAssociativeArray" then
      modelSupportsWifi = true
    end if
  end if
  nc = invalid
  return modelSupportsWifi
  
end function


Sub SetLWS(setupParams as object, registrySection as object)
  
  ' delete obsolete lws keys
  registrySection.Delete("lws")
  registrySection.Delete("lwsu")
  registrySection.Delete("lwsp")
  
  ' local web server
  if setupParams.lwsConfig$ = "content" or setupParams.lwsConfig$ = "status" then
    registrySection.Write("nlws", Left(setupParams.lwsConfig$, 1))
    registrySection.Write("nlwsu", setupParams.lwsUserName$)
    registrySection.Write("nlwsp", setupParams.lwsPassword$)
    registrySection.Write("nlwseun", GetYesNoFromBoolean(setupParams.lwsEnableUpdateNotifications))
  else
    registrySection.Delete("nlws")
    registrySection.Delete("nlwsu")
    registrySection.Delete("nlwsp")
    registrySection.Delete("nlwseun")
  end if
  
end sub


Sub SetHostname(specifyHostname as boolean, hostname$ as string)
  
  if specifyHostname then
    
    nc = CreateObject("roNetworkConfiguration", 0)
    
    if type(nc) <> "roNetworkConfiguration" then
      nc = CreateObject("roNetworkConfiguration", 1)
    end if
    
    if type(nc) = "roNetworkConfiguration" then
      ok = nc.SetHostname(hostname$)
      if ok then 
        nc.Apply()
      endif
      nc = invalid
    end if
  end if
  
end sub


Sub SetDWS(setupParams as object, registrySection as object)
  
  ' diagnostic web server
  
  dwsAA = CreateObject("roAssociativeArray")
  if setupParams.dwsEnabled or setupParams.remoteDwsEnabled then
    dwsAA["port"] = "80"
    dwsAA["password"] = setupParams.dwsPassword$
  else
    dwsAA["port"] = 0
  end if
  
  ' Set the old registry to see if dws or remotedws values are switched
  dwseRegistry = registrySection.Read("dwse")
  rdwseRegistry = registrySection.Read("rdwse")
  
  registrySection.Write("rdwse", GetYesNoFromBoolean(setupParams.remoteDwsEnabled))
  registrySection.Write("dwse", GetYesNoFromBoolean(setupParams.dwsEnabled))
  registrySection.Write("dwsp", setupParams.dwsPassword$)
  
  ' set DWS on device
  nc = CreateObject("roNetworkConfiguration", 0)
  
  if type(nc) <> "roNetworkConfiguration" then
    nc = CreateObject("roNetworkConfiguration", 1)
  end if
  
  if type(nc) = "roNetworkConfiguration" then
    rebootRequired = nc.SetupDWS(dwsAA)
    ' Unnecessary reboot for BSN/LFN/SFN. Refactor reboot throughout autorun for device setup
    if rebootRequired then RebootSystem()
    if dwseRegistry <> GetYesNoFromBoolean(setupParams.dwsEnabled) or rdwseRegistry <> GetYesNoFromBoolean(setupParams.remoteDwsEnabled) then
      a = RebootSystem()
      stop
    end if
  end if
  
end sub


Sub ConfigureEthernet(ethernetNetworkingParameters as object, networkConnectionPriorityWired% as integer, timeServer$ as string, proxySpec$ as string, bypassProxyHosts as object, featureMinRevs as object)
  nc = CreateObject("roNetworkConfiguration", 0)
  if type(nc) = "roNetworkConfiguration" then
    ConfigureNetwork(nc, ethernetNetworkingParameters, networkConnectionPriorityWired%, timeServer$, proxySpec$, bypassProxyHosts, featureMinRevs)
  else
    print "Unable to create roNetworkConfiguration - index = 0"
  end if
end sub


Sub ConfigureWifi(wifiNetworkingParameters as object, ssid$ as string, passphrase$ as string, networkConnectionPriorityWireless% as integer, timeServer$ as string, proxySpec$ as string, bypassProxyHosts as object, featureMinRevs as object)
  nc = CreateObject("roNetworkConfiguration", 1)
  if type(nc) = "roNetworkConfiguration" then
    nc.SetWiFiESSID(ssid$)
    nc.SetObfuscatedWifiPassphrase(passphrase$)
    ConfigureNetwork(nc, wifiNetworkingParameters, networkConnectionPriorityWireless%, timeServer$, proxySpec$, bypassProxyHosts, featureMinRevs)
  else
    print "Unable to create roNetworkConfiguration - index = 1"
  end if
end sub


Sub ConfigureNetwork(nc as object, networkingParameters as object, networkConnectionPriority% as integer, timeServer$ as string, proxySpec$ as string, bypassProxyHosts as object, featureMinRevs as object)
  
  if not networkingParameters.useDHCP then
    nc.SetIP4Address(networkingParameters.staticIPAddress$)
    nc.SetIP4Netmask(networkingParameters.subnetMask$)
    nc.SetIP4Gateway(networkingParameters.gateway$)
    if networkingParameters.dns1$ <> "" then nc.AddDNSServer(networkingParameters.dns1$)
    if networkingParameters.dns2$ <> "" then nc.AddDNSServer(networkingParameters.dns2$)
    if networkingParameters.dns3$ <> "" then nc.AddDNSServer(networkingParameters.dns3$)
  else
    nc.SetDHCP()
  end if
  
  nc.SetRoutingMetric(networkConnectionPriority%)
  nc.SetTimeServer(timeServer$)
  nc.SetProxy(proxySpec$)
  
  ok = nc.SetProxyBypass(bypassProxyHosts)
  
  nc.SetInboundShaperRate(networkingParameters.rl%)
  success = nc.Apply()
  
end sub


Sub DisableWireless()
  nc = CreateObject("roNetworkConfiguration", 1)
  if type(nc) = "roNetworkConfiguration" then
    nc.SetDHCP()
    nc.SetWiFiESSID("")
    nc.SetObfuscatedWifiPassphrase("")
    nc.Apply()
  end if
end sub


Sub SetWiredParameters(setupParams as object, registrySection as object, useWireless as boolean)
  
  if useWireless then
    registrySection.Write("ncp", GetNumericStringFromNumber(setupParams.networkConnectionPriorityWired%))
    registrySection.Write("cwf", GetTrueFalseFromBoolean(setupParams.contentDataTypeEnabledWired))
    registrySection.Write("twf", GetTrueFalseFromBoolean(setupParams.textFeedsDataTypeEnabledWired))
    registrySection.Write("hwf", GetTrueFalseFromBoolean(setupParams.healthDataTypeEnabledWired))
    registrySection.Write("mwf", GetTrueFalseFromBoolean(setupParams.mediaFeedsDataTypeEnabledWired))
    registrySection.Write("lwf", GetTrueFalseFromBoolean(setupParams.logUploadsXfersEnabledWired))
  else
    registrySection.Write("ncp", "0")
    registrySection.Write("cwr", "True")
    registrySection.Write("twr", "True")
    registrySection.Write("hwr", "True")
    registrySection.Write("mwr", "True")
    registrySection.Write("lwr", "True")
  end if
  
end sub


Function SetWirelessParameters(setupParams as object, registrySection as object, modelSupportsWifi as boolean) as boolean
  
  if setupParams.useWireless and modelSupportsWifi then
    
    registrySection.Write("wifi", "yes")
    registrySection.Write("ss", setupParams.ssid$)
    registrySection.Write("pp", setupParams.passphrase$)
    
    registrySection.Write("ncp2", GetNumericStringFromNumber(setupParams.networkConnectionPriorityWireless%))
    registrySection.Write("cwf", GetTrueFalseFromBoolean(setupParams.contentDataTypeEnabledWireless))
    registrySection.Write("twf", GetTrueFalseFromBoolean(setupParams.textFeedsDataTypeEnabledWireless))
    registrySection.Write("hwf", GetTrueFalseFromBoolean(setupParams.healthDataTypeEnabledWireless))
    registrySection.Write("mwf", GetTrueFalseFromBoolean(setupParams.mediaFeedsDataTypeEnabledWireless))
    registrySection.Write("lwf", GetTrueFalseFromBoolean(setupParams.logUploadsXfersEnabledWireless))
    return true
    
  end if
  
  registrySection.Write("wifi", "no")
  return false
  
end function


' B-Deploy use case: recovery url might be present for non-BSN setup types
Sub SetRecoveryHandlerUrl(setupParams as object, registrySection as object)
  if IsString(setupParams.recoveryHandler) and setupParams.recoveryHandler <> "" then
    registrySection.Write("ru", setupParams.recoveryHandler)
  end if
End Sub


Function GetProxy(setupParams as object, registrySection as object) as string
  
  proxySpec$ = ""
  
  if setupParams.useProxy then
    
    proxySpec$ = ""
    
    registrySection.Write("up", "yes")
    registrySection.Write("ps", setupParams.proxySpec$)
    
    return setupParams.proxySpec$
    
  end if
  
  registrySection.Write("up", "no")
  return ""
  
end function


Function GetBypassProxyHosts(proxySpec$ as string, setupParams as object) as object
  
  bypassProxyHosts = []
  
  if proxySpec$ <> "" then
    
    for each networkHost in setupParams.networkHosts
      ParseProxyBypass(bypassProxyHosts, networkHost)
    next
    
  end if
  
  return bypassProxyHosts
  
end function


Sub ParseProxyBypass(bypassProxyHosts as object, networkHost as object)
  
  if networkHost.BypassProxy then
    hostName$ = networkHost.HostName
    if hostName$ <> "" then
      bypassProxyHosts.push(hostName$)
    end if
  end if
  
end sub


Function GetBinding(wiredTransferEnabled as boolean, wirelessTransferEnabled as boolean) as integer
  
  binding% = -1
  if wiredTransferEnabled <> wirelessTransferEnabled then
    if wiredTransferEnabled then
      binding% = 0
    else
      binding% = 1
    end if
  end if
  
  return binding%
  
end function


' Check not invalid, then check either true/false
Function IsTruthy(value)
  valueType = type(value)
  if valueType = "Boolean" or valueType = "roBoolean" then
    if value = true or value = True then
      return true
    else if value = false or value = False then
      return false
    end if
  else if valueType = "String" or valueType = "roString" then
    if value = "true" or value = "True" or value = "1" or value = "on" or value = "On" or value = "yes" or value = "Yes" then
      return true
    else if value = "false" or value = "False" or value = "0" or value = "off" or value = "Off" or value = "no" or value = "No" then
      return false
    end if
  else if valueType = "Integer" or valueType = "roInteger" then
    if value = 1 then
      return true
    else if value = 0 then
      return false
    end if
  end if
  return invalid
end function


Function GetBoolFromNumericString(value$ as string) as boolean
  if value$ = "1" then return true
  return false
end function


Function GetNumberFromNumericString(value$ as string) as integer
  return int(val(value$))
end function


Function GetYesNoFromBoolean(value as boolean) as string
  if value then return "yes"
  return "no"
end function


Function GetTrueFalseFromBoolean(value as boolean) as string
  if value then return "True"
  return "False"
end function


Function GetNumericStringFromNumber(value% as integer) as string
  return stri(value%)
end function

' The pair function syncSpecValueFalse can be found in autoxml.brs
' only add this function because only it is being used in autorun-setup-simple-networking.brs
Function syncSpecValueTrue(syncSpecValue$) as boolean
  if lcase(syncSpecValue$) = "yes" or syncSpecValue$ = "1" or lcase(syncSpecValue$) = "true" then
    return true
  end if
  return false
end function

Sub ClearBsnce(supervisorRegistrySection As Object, bsnCloudEnabled)
  if IsTruthy(bsnCloudEnabled) = invalid or IsTruthy(bsnCloudEnabled) <> false then
    supervisorRegistrySection.Delete("bsnce")
  end if
end sub


Sub SetRemoteSnapshot(setupParams as object, registrySection as object)
  
  registrySection.Write("enableRemoteSnapshot", GetYesNoFromBoolean(setupParams.enableRemoteSnapshot))
  
  if setupParams.enableRemoteSnapshot then
    registrySection.Write("remoteSnapshotInterval", GetNumericStringFromNumber(setupParams.remoteSnapshotInterval%))
    registrySection.Write("remoteSnapshotMaxImages", GetNumericStringFromNumber(setupParams.remoteSnapshotMaxImages%))
    registrySection.Write("remoteSnapshotJpegQualityLevel", GetNumericStringFromNumber(setupParams.remoteSnapshotJpegQualityLevel%))
    if setupParams.remoteSnapshotDisplayPortrait$ = "portrait" then
      registrySection.Write("remoteSnapshotDisplayPortrait", "yes")
    else
      registrySection.Write("remoteSnapshotDisplayPortrait", "no")
    end if
  end if
  
end sub


Sub SetIdleColor(setupParams as object, registrySection as object)
  
  registrySection.Write("isc", setupParams.idleScreenColor$)
  
end sub


Function SetDeviceSetupSplashScreen(setupType, msgPort as object, ucss)
  
  filepath = ""
  
  ' if ucss = "0" or not ucss or then ' ucss (useCustomSplashScreen) = 0 comes from sfn / lfn
  
  filepath = "sys:/web-client/postDeviceSetupSplashScreen/dist/index.html"
  
  file = CreateObject("roReadFile", filepath)
  
  if file <> invalid then
    filepath = "file:/" + filepath
    
    videoMode = CreateObject("roVideoMode")
    resX = videoMode.GetResX()
    resY = videoMode.GetResY()
    r = CreateObject("roRectangle", 0, 0, resX, resY)
    config = {
      url: filepath
      brightsign_js_objects_enabled: true
      nodejs_enabled: true
    }
    htmlWidget = CreateObject("roHtmlWidget", r, config)
    if type(htmlWidget) = "roHtmlWidget" then
      htmlWidget.SetPort(msgPort)
      htmlWidget.AllowJavascriptUrls({ all: "*" })
      htmlWidget.EnableJavascript(true)
      sleep(5000)
      if setupType = "sfn" then
        headervalue = "Congratulations, your BrightSign player is set up!"
        messagevalue = "Use BrightAuthor:connected to publish content via Simple File Networking."
      else if setupType = "standalone" then
        headervalue = "Congratulations, your BrightSign player is set up!"
        messagevalue = "Use BrightAuthor:connected to publish content to a MicroSD card. Then, insert the card into the player."
      else if setupType = "lfn" then
        headervalue = "Local File Networking setup is in progress..."
        messagevalue = "Your BrightSign player will be ready to receive content after it completes rebooting."
      end if
      
      htmlWidget.PostJSMessage({
        htmlcommand: "setupsplashscreenmessage",
        headermsg: headervalue,
        message: messagevalue
      })
      htmlWidget.Show()
      return htmlWidget
    else
      stop
    end if
  end if
  'endif
  
  return invalid
  
end function


Sub SetCustomSplashScreen(setupParams as object, registrySection as object, featureMinRevs as object)
  
  deviceCustomization = CreateObject("roDeviceCustomization")
  
  if setupParams.useCustomSplashScreen then
    ok = deviceCustomization.WriteSplashScreen("customSplashScreen")
  else
    ok = deviceCustomization.WriteSplashScreen("")
  end if
  
end sub


Sub SetBeacons(spec as object, registrySection as object, featureMinRevs as object)
  
  return
  
  ''		for n = 1 to 2
  ''			key$ = "beacon" + Mid(stri(n),2)
  ''			beaconJson = GetEntry(spec, key$)
  ''			if Len(beaconJson) > 0 then
  ''				registrySection.Write(key$, beaconJson)
  ''			endif
  ''		next
  
end sub


Function ParseFeatureMinRevs() as object
  
  featureMinRevs = { }
  
  path$ = "featureMinRevs.json"
  featureMinRevs$ = ReadAsciiFile(path$)
  
  if len(featureMinRevs$) > 0 then
    
    publishedFeatureMinRevs = ParseJson(featureMinRevs$)
    
    ' verify that this is a valid FeatureMinRevs Json file
    if type(publishedFeatureMinRevs.FeatureMinRevs) <> "roAssociativeArray" then print "Invalid FeatureMinRevs JSON file - name not FeatureMinRevs" : stop
    if not IsString(publishedFeatureMinRevs.FeatureMinRevs.version) then print "Invalid FeatureMinRevs JSON file - version not found" : stop
    
    for each featureAA in publishedFeatureMinRevs.FeatureMinRevs.features
      featureName$ = featureAA.name
      minRev$ = featureAA.minFWRev
      featureMinRevs.AddReplace(featureName$, minRev$)
    next
    
  end if
  
  return featureMinRevs
  
end function


Function IsFeatureSupported(featureName$ as string, featureMinRevs as object) as boolean
  
  modelObject = CreateObject("roDeviceInfo")
  fwVersion$ = modelObject.GetVersion()
  
  featureExists = featureMinRevs.DoesExist(featureName$)
  if featureExists then
    featureMinFWRev = featureMinRevs[featureName$]
    featureMinFWRevVSFWVersion% = CompareFirmwareVersions(featureMinFWRev, fwVersion$)
    if featureMinFWRevVSFWVersion% <= 0 then
      return true
    end if
  end if
  
  return false
  
end function


Function CompareFirmwareVersions(a$ as string, b$ as string) as integer
  
  start_a% = 0
  start_b% = 0
  
  while true
    
    if start_a% >= len(a$) then
      if start_b% >= len(b$) then
        return 0
      else
        return -1
      end if
    else if start_b% >= len(b$) then
      return 1
    end if
    
    aChar$ = mid(a$, start_a% + 1, 1)
    a_digit = IsDigit(aChar$)
    
    bChar$ = mid(b$, start_b% + 1, 1)
    b_digit = IsDigit(bChar$)
    
    if a_digit and b_digit then
      
      ' Now we need to find the end of each of the sequences of digits.
      aa = { }
      aa.index = start_a%
      a_number% = ReadDigits(a$, aa)
      start_a% = aa.index
      
      bb = { }
      bb.index = start_b%
      b_number% = ReadDigits(b$, bb)
      start_b% = bb.index
      
      if a_number% < b_number% then
        return -1
      else if a_number% > b_number% then
        return 1
      end if
    else if a_digit then
      ' The first string has a digit but the second one has a
      ' non-digit so it must be greater.
      return 1
    else if b_digit then
      return -1
    else
      aChar$ = mid(a$, start_a% + 1, 1)
      bChar$ = mid(b$, start_b% + 1, 1)
      
      if asc(aChar$) < asc(bChar$) then
        return -1
      else if asc(aChar$) > asc(bChar$)
        return 1
      end if
      
      ' Otherwise we've dealt with this character
      start_a% = start_a% + 1
      start_b% = start_b% + 1
    end if
  end while
  
end function


Function IsDigit(a$ as string) as boolean
  
  if asc(a$) >= 48 and asc(a$) <= 57 then
    return true
  else
    return false
  end if
  
end function


Function ReadDigits(s$ as string, aa as object) as integer
  
  value% = 0
  
  index% = aa.index
  
  sChar$ = mid(s$, index% + 1, 1)
  
  while index% < len(s$) and IsDigit(sChar$)
    
    new_value% = value% * 10 + asc(sChar$) - asc("0")
    index% = index% + 1
    
    value% = new_value%
    
    if len(s$) > index% then
      sChar$ = mid(s$, index% + 1, 1)
    end if
    
  end while
  
  aa.index = index%
  return value%
  
end function


Function IsString(inputVariable as object) as boolean
  
  if type(inputVariable) = "roString" or type(inputVariable) = "String" then return true
  return false
  
end function


Sub SetBsnCloudParameters(setupParams as object, registrySection as object)
  ' initialise flag for deleting registration token which is used for register device with BSN 
  deleteRTFlag = false
  if setupParams.account <> "" and setupParams.group <> "" and setupParams.bsnRegistrationToken <> "" then
    registrySection.Write("a", setupParams.account)
    registrySection.Write("g", setupParams.group)
    registrySection.Write("bsnrt", setupParams.bsnRegistrationToken)
    registrySection.Write("endpoints_s3Url", setupParams.endpoints_s3Url)
    registrySection.Write("endpoints_provisionServer", setupParams.endpoints_provisionServer)
    registrySection.Write("endpoints_bsnServer", setupParams.endpoints_bsnServer)
    registrySection.Write("endpoints_websocketsDWS", setupParams.endpoints_websocketsDWS)
    registrySection.Write("endpoints_bsnApiServer", setupParams.endpoints_bsnApiServer)
    registrySection.Write("endpoints_certsServer", setupParams.endpoints_certsServer)

    if setupParams.bsn_base <> "" and setupParams.bsn_next <> "" then
      registrySection.Write("bsn_base", setupParams.bsn_base)
      registrySection.Write("bsn_next", setupParams.bsn_next)
      registrySection.Write("registered_with_bsn", "no")
    else
      deleteRTFlag = true
    end if
  else
    deleteRTFlag = true
  end if

  ' clear the registry flag in case if someone starting running setup with it set, but switch to a different setup later.
  if deleteRTFlag then
    registrySection.Delete("bsn_base")
    registrySection.Delete("bsn_next")
    registrySection.Delete("registered_with_bsn")
  end if

end sub
