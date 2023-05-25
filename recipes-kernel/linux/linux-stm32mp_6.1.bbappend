FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:"

SRC_URI:append:stm32mp1rt = " \
    file://${LINUX_VERSION}/${LINUX_VERSION}${LINUX_SUBVERSION}/0025-rebase-on-v6.1.28-rt10.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}${LINUX_SUBVERSION}/0026-LINUX-STM32MP-v6.1-stm32mp-rt-r1.patch \
    "

SRC_URI:append:stm32mp1rt = " \
    file://${LINUX_VERSION}/fragment-10-network-improvment.config;subdir=fragments/${BPN} \
    file://${LINUX_VERSION}/fragment-11-no-psi.config;subdir=fragments/${BPN} \
    "

LINUX_RT_VERSION = ".rt10"
PV = "${LINUX_VERSION}${LINUX_SUBVERSION}${LINUX_RT_VERSION}-${LINUX_TARGET}-${LINUX_RELEASE}"

