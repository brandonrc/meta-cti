FILESEXTRAPATHS_prepend := "${THISDIR}/files/tegra186:"
SRCBRANCH = "oe4t-patches-l4t-r${L4T_VERSION}-cti"

SRCREV = "234190ad91bd22fdc8318e11ed5120ffd202d7ed"

KERNEL_REPO = "git@github.com/esharet/linux-tegra-4.9.git"
SRC_URI = "git://${KERNEL_REPO};protocol=ssh;branch=${SRCBRANCH} \
"

KERNEL_ROOTSPEC = "root=/dev/mmcblk${@uboot_var('devnum')}p${@uboot_var('distro_bootpart') rw rootwait"

# do_configure_prepend(){
#     mv ${WORKDIR}/tegra186_cti_defconfig ${WORKDIR}/defconfig
# }
