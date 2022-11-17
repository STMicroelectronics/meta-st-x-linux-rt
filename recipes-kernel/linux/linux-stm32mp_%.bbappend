KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${S}/arch/arm/configs/fragment-07-rt.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', '${S}/arch/arm/configs/fragment-07-rt-sysvinit.config', '', d)}"
KERNEL_CONFIG_FRAGMENTS:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'nosmp', '${S}/arch/arm/configs/fragment-08-rt-mp13.config', '', d)}"
