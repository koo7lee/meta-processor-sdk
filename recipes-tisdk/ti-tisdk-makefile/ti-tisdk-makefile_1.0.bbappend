PR_append = "-tisdk10"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
            file://Makefile_omapdrm-pvr \
            file://Makefile_gdbserverproxy-module-drv \
            file://Makefile_opencl-examples \
"

MAKEFILES_append_omap-a15 = " \
    omapdrm-pvr \
    gdbserverproxy-module-drv \
    opencl-examples \
"

DEFCONFIG = "tisdk_${MACHINE}_defconfig"

PLATFORM_GDBSERVERPROXY = ""
PLATFORM_GDBSERVERPROXY_dra7xx = "DRA7xx_PLATFORM"

do_install_append() {
    sed -i -e "s/__PLATFORM_GDBSERVERPROXY__/${PLATFORM_GDBSERVERPROXY}/g" ${D}/Makefile
}
