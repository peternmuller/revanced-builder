#!/system/bin/sh
{
	MODDIR=${0%/*}
	. "$MODDIR/config"

	rm "/data/adb/rvpnm/${MODDIR##*/}.apk"
	rmdir "/data/adb/rvpnm"
	rm "/data/adb/post-fs-data.d/$PKG_NAME-uninstall.sh"
} &
