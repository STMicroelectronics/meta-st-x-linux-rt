FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:${THISDIR}/${PN}/${LINUX_VERSION}:"

SRC_URI:append:stm32mprtcommon = " \
    file://0010-Rebase-on-v6.1.82-rt27.patch \
    file://0011-v6.1-stm32mp-rt-r2.patch \
    "

LINUX_RELEASE:stm32mprtcommon = "rt-r2"
LINUX_RT_VERSION = ".rt27"
PV:stm32mprtcommon = "${LINUX_VERSION}${LINUX_SUBVERSION}${LINUX_RT_VERSION}-${LINUX_TARGET}-${LINUX_RELEASE}"
