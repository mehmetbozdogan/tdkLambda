TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = slowDevices
# slowDevices.dbd will be created and installed
DBD += slowDevices.dbd

# slowDevices.dbd will be made up from these files:
slowDevices_DBD += base.dbd
slowDevices_DBD += modules.dbd

# Include dbd files from all support applications:
#slowDevices_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#slowDevices_LIBS += xxx

# slowDevices_registerRecordDeviceDriver.cpp derives from slowDevices.dbd
slowDevices_SRCS += slowDevices_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
slowDevices_SRCS_DEFAULT += slowDevicesMain.cpp
slowDevices_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#slowDevices_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
slowDevices_LIBS += $(EPICS_BASE_IOC_LIBS)
slowDevices_LIBS += pvaSrv pvAccess pvData pvMB

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
PROD_LIBS += stream
PROD_LIBS += asyn
