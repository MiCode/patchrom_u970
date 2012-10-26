#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
GIT_APPLY=$PORT_ROOT/tools/git.apply

if [ "$2" = "out/android.policy" ];then
	echo "apply compile patch anroid.policy"
	cp framework-patch/android.policy/*.patch out/android.policy
	cd out/android.policy
	for f in `ls *.patch`;do
		$GIT_APPLY "$f"
	done
	rm *.patch
	for rej in `find -name "*.rej"`;do
		echo "apply android.policy patch fail"
		exit 1
	done
fi
