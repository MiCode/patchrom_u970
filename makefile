#
# Makefile for c8812
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip
# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_u970.zip

#
local-miui-modified-apps := MiuiHome Settings MiuiSystemUI Phone ThemeManager Mms TelephonyProvider DeskClock

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider

# All apks from MIUI
local-miui-removed-apps := SettingsProvider MediaProvider Stk Bluetooth \

#                               Mms TelephonyProvider Phone  \

# All apps need to be removed from original ZIP file
local-phone-apps := ApplicationsProvider BackupRestoreConfirmation Bluetooth Camera CertInstaller \
          DefaultContainerService DrmProvider \
          FmRadio HTMLViewer KeyChain LiveWallpapers LiveWallpapersPicker MediaProvider NoiseField  \
          PicoTts SettingsProvider SharedStorageBackup \
          Stk  TelephonyProvider UserDictionaryProvider VpnDialogs \

# ProjectMenuAct MMITest_II MMITest_record OkbService
# To include the local targets before and after zip the final ZIP file,  
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp other/boot-b03.img $(ZIP_DIR)/boot.img
	cp other/build-b03.prop $(ZIP_DIR)/system/build.prop
	cp -f other/apns-conf.xml $(ZIP_DIR)/system/etc/apns-conf.xml

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo use special libffmpeg.so
	cp other/libffmpeg.so $(ZIP_DIR)/system/lib/libffmpeg.so

#	cp other/vold.fstab $(ZIP_DIR)/system/etc/vold.fstab
