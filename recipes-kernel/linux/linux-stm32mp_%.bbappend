# To share config fragments between layers
FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:"

SRC_URI:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', 'file://${LINUX_VERSION}/fragment-10-network-improvment.config;subdir=fragments/${BPN}', '', d)}"
SRC_URI:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', 'file://${LINUX_VERSION}/fragment-12-rt-optimization.config;subdir=fragments/${BPN}', '', d)}"

KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${S}/arch/${ARCH}/configs/fragment-07-rt.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${S}/arch/${ARCH}/configs/fragment-07-rt-sysvinit.config', '', d)}"

KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${WORKDIR}/fragments/${BPN}/${LINUX_VERSION}/fragment-10-network-improvment.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rtperf', '${WORKDIR}/fragments/${BPN}/${LINUX_VERSION}/fragment-12-rt-optimization.config', '', d)}"

KERNEL_CONFIG_FRAGMENTS:append:stm32mp1rt = " ${@bb.utils.contains('MACHINE_FEATURES', 'nosmp', '${WORKDIR}/fragments/features/${LINUX_VERSION}/optional-fragment-06-nosmp.config', '', d)}"

KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rtperf', '${S}/arch/${ARCH}/configs/fragment-10-rt-perf.config', '', d)}"
