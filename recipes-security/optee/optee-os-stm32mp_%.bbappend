FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/optee-os:"

SRC_URI:append:stm32mp1rt = " \
    file://0003-dts-stm32mp13-add-OPP-900-and-enable-it-on-DK-board.patch \
    file://0004-dts-stm32mp15-enable-OPP-650-on-DK-board.patch \
    "
