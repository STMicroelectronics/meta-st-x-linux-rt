FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:${THISDIR}/${PN}/${LINUX_VERSION}:"

SRC_URI:append:stm32mprtcommon = " \
    file://0010-Rebase-on-v6.6.129-rt67.patch \
    file://0011-v6.6-stm32mp-rt-r3.patch \
    "

LINUX_RELEASE:stm32mprtcommon = "rt-r3"
LINUX_RT_VERSION = ".rt67"
PV:stm32mprtcommon = "${LINUX_VERSION}${LINUX_SUBVERSION}${LINUX_RT_VERSION}-${LINUX_TARGET}-${LINUX_RELEASE}"
