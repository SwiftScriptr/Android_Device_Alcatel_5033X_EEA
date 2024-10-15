'''sh
#!/sbin/sh

setenforce 0

# Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.
mkdir -p /dev/block/platform/bootdevice/by-name/
busybox mount -o bind /dev/block/platform/bootdevice/by-name
#The above script is for adding Old-Style Mount Points as-well-as New-Style Mount Points to avoid ROM Conflicts.
