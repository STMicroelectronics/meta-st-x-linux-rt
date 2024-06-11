# Distribution definition for stm32mp

# from dev manual:
# Your configuration file needs to set the following variables:
#
#      DISTRO_NAME [required]
#      DISTRO_VERSION [required]
#      DISTRO_FEATURES [required if creating from scratch]
#      DISTRO_EXTRA_RDEPENDS [optional]
#      DISTRO_EXTRA_RRECOMMENDS [optional]
#      TCLIBC [required if creating from scratch]

LOCALCONF_VERSION = "2"
LAYER_CONF_VERSION ?= "7"

# Set common distrooverrides for RT distro
DISTROOVERRIDES =. "openstlinuxcommonrt:"

# =========================================================================
# Set default distro naming
# =========================================================================
require conf/distro/include/openstlinux-default-naming.inc

# =========================================================================
# Enable uninative support
# =========================================================================
require conf/distro/include/no-static-libs.inc
require conf/distro/include/yocto-uninative.inc
INHERIT += "uninative"

# =========================================================================
# DISTRO features
# =========================================================================
DISTRO_FEATURES  = ""
DISTRO_FEATURES += "argp"
DISTRO_FEATURES += "ext2"
DISTRO_FEATURES += "ext4"
DISTRO_FEATURES += "largefile"
DISTRO_FEATURES += "ipv4"
DISTRO_FEATURES += "multiarch"
DISTRO_FEATURES += "xattr"


# add support of optee
DISTRO_FEATURES:append = " optee "

# add support of autoresize through InitRD
DISTRO_FEATURES:append = " autoresize "
DISTRO_FEATURES:append = " initrd "

# Disabling pulseaudio
DISTRO_FEATURES_BACKFILL_CONSIDERED += "pulseaudio"

# =========================================================================
# IMAGE addons
# =========================================================================
# TODO: is that really want we want?
IMAGE_LINGUAS = "en-gb"

# Packages to add to image being built

# Add locale command
IMAGE_INSTALL:append = " glibc-utils localedef "
