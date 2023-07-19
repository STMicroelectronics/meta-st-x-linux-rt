FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:"

SRC_URI:append:stm32mp1rt = " \
    file://${LINUX_VERSION}/${LINUX_VERSION}${LINUX_SUBVERSION}/0025-rebase-on-v6.1.28-rt10.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}${LINUX_SUBVERSION}/0026-LINUX-STM32MP-v6.1-stm32mp-rt-r1.patch \
    "

SRC_URI:append:stm32mp2rt = " \
    file://${LINUX_VERSION}/${LINUX_VERSION}${LINUX_SUBVERSION}/0025-rebase-on-v6.1.28-rt10.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}${LINUX_SUBVERSION}/0026-LINUX-STM32MP-v6.1-stm32mp25-beta-rt-r1-rc1.patch \
    file://${LINUX_VERSION}/${LINUX_VERSION}${LINUX_SUBVERSION}/0027-LINUX-STM32MP-v6.1-stm32mp25-beta-rt-r1-rc2.patch \
    "

SRC_URI:append:stm32mp1rt = " \
    file://${LINUX_VERSION}/fragment-10-network-improvment.config;subdir=fragments/${BPN} \
    file://${LINUX_VERSION}/fragment-11-no-psi.config;subdir=fragments/${BPN} \
    "

SRC_URI:append:stm32mp2rt = " \
    file://${LINUX_VERSION}/fragment-10-network-improvment.config;subdir=fragments/${BPN} \
    file://${LINUX_VERSION}/fragment-11-no-psi.config;subdir=fragments/${BPN} \
    "
LINUX_RELEASE:stm32mp2rt = "beta-rt-r1-rc2"
LINUX_RT_VERSION = ".rt10"
PV = "${LINUX_VERSION}${LINUX_SUBVERSION}${LINUX_RT_VERSION}-${LINUX_TARGET}-${LINUX_RELEASE}"

