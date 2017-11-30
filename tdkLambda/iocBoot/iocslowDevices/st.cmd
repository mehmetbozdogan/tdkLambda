#!../../bin/linux-x86_64/slowDevices

## You may have to change slowDevices to something else
## everywhere it appears in this file

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/protocols")

cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/slowDevices.dbd",0,0)
slowDevices_registerRecordDeviceDriver(pdbbase) 

## Load record instances
#dbLoadRecords("db/custom.db","user=root")
dbLoadTemplate "db/template.substitutions"

#var streamDebug 1


drvAsynIPPortConfigure ("SYS-SEC-DEV", "169.254.9.2:8003")
asynSetTraceMask("SYS-SEC-DEV",-1,0x9)
asynSetTraceIOMask("SYS-SEC-DEV",-1,0x2)

iocInit()
startPVAServer

