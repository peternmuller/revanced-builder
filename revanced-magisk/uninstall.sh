#!/system/bin/sh
{
	MODDIR=${0%/*}
	rm "$NVBASE/rvpnm/${MODDIR##*/}".apk
	rmdir "$NVBASE/rvpnm"
} &
