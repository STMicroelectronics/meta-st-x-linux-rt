FILESEXTRAPATHS:prepend := "${THISDIR}:${THISDIR}/${PN}:"

SRC_URI:append = " ${@bb.utils.contains('MACHINE_FEATURES', 'rt', 'file://0001-Add-DT-files-for-RT-feature.patch', '', d)}"
