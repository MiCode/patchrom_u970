#
# Makefile for u970
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


# All apps need to be removed from original ZIP file
local-phone-apps := ApplicationsProvider BackupRestoreConfirmation Bluetooth Camera CertInstaller \
          DefaultContainerService DrmProvider LatinIME Emode \
          FmRadio HTMLViewer KeyChain LiveWallpapers LiveWallpapersPicker MediaProvider NoiseField  \
          PicoTts SettingsProvider SharedStorageBackup \
          Stk UserDictionaryProvider VpnDialogs \

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
	cp other/boot-b04.img $(ZIP_DIR)/boot.img
	cp other/build-b04.prop $(ZIP_DIR)/system/build.prop
	cp other/StockSettings.apk $(ZIP_DIR)/system/app/

	@echo update bootanimation
	rm -rf $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo use special libffmpeg_xm.so
	cp other/libffmpeg_xm.so $(ZIP_DIR)/system/lib/libffmpeg_xm.so

	@echo use orignal installd
	cp other/installd $(ZIP_DIR)/system/bin/installd
	cp other/miuiapp $(ZIP_DIR)/system/bin/miuiapp

