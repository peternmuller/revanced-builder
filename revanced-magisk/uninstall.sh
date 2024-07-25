#!/system/bin/sh
{
	MODDIR=${0%/*}
<<<<<<< HEAD
	rm "$NVBASE/rvpnm/${MODDIR##*/}".apk
	rmdir "$NVBASE/rvpnm"
=======
	rm "/data/adb/rvpnm/${MODDIR##*/}".apk
	rmdir "/data/adb/rvpnm"
>>>>>>> ecd919d (module: remove NVBASE)
} &
