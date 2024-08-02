#!/system/bin/sh
{
	MODDIR=${0%/*}
	rm "/data/adb/rvpnm/${MODDIR##*/}".apk
	rmdir "/data/adb/rvpnm"
} &
