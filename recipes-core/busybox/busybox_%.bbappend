FILESEXTRAPATHS:prepend:stm32mpcommon := "${THISDIR}/${PN}:"

SRC_URI:append = " file://busybox-watchdog-rt.cfg "
