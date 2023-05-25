# To share config fragments between layers
FILESEXTRAPATHS:prepend := "${THISDIR}:"

KERNEL_CONFIG_FRAGMENTS:append:stm32mp1rt = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${S}/arch/arm/configs/fragment-07-rt.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append:stm32mp1rt = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${S}/arch/arm/configs/fragment-07-rt-sysvinit.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append:stm32mp1rt = " ${@bb.utils.contains('MACHINE_FEATURES', 'nosmp', '${S}/arch/arm/configs/fragment-08-rt-mp13.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append:stm32mp1rt = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${WORKDIR}/fragments/${BPN}/${LINUX_VERSION}/fragment-10-network-improvment.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append:stm32mp1rt = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${WORKDIR}/fragments/${BPN}/${LINUX_VERSION}/fragment-11-no-psi.config', '', d)}"
