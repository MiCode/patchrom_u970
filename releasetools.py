import common
import edify_generator
import os
import re

def WriteRawImage(info, *args):
    info.script.Print("Updating BOOT Image...")
    info.script.AppendExtra('package_extract_file("boot.img", "/dev/block/platform/sdhci-tegra.3/by-name/LNX");')
    return True

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "u970" || getprop("ro.build.product") == "u970");')
            return

def FullOTA_InstallEnd(info):
    AddAssertions(info)

    info.script.Print("Writing image blob...")
    info.script.AppendExtra('nv_copy_blob_file("blob", "/staging");')
    return

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info) 

    source_file = info.source_zip.read("RADIO/blob")
    target_file = info.target_zip.read("RADIO/blob")
    if source_file != target_file:
        info.script.Print("Writing image blob...")
        info.script.AppendExtra('nv_copy_blob_file("blob", "/staging");')
    else:
        print "blob image unchanged; skipping"
    return
