DESCRIPTION = "TI ICSS-EMAC low level driver library"

DEPENDS="common-csl-ip pruss-lld osal"

include icss-emac-lld-01.00.00.inc

PR = "${INC_PR}.2"

COMPATIBLE_MACHINE = "am57xx-evm|ti33x|ti43x"

TARGET_NAME_am57xx-evm = "SOC_AM572x"
TARGET_NAME_ti33x = "SOC_AM335x"
TARGET_NAME_ti43x = "SOC_AM437x"

EXTRA_OEMAKE += "-f makefile_armv7 PDK_INSTALL_PATH=${STAGING_INCDIR} TARGET=${TARGET_NAME}"

do_compile () {
#   Build the lib
    oe_runmake clean
    oe_runmake lib
}

do_install () {
#   Install the lib
    oe_runmake install INSTALL_INC_BASE_DIR=${D}${includedir} INSTALL_LIB_BASE_DIR=${D}${libdir}
}
