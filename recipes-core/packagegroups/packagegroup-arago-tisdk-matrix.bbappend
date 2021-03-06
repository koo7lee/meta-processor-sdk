PR_append = "-tisdk50"

PACKAGES =+ "${PN}-extra"

MATRIX_SGX_DEMOS_remove_omap-a15 = " \
    matrix-3d-demo-kmscubevideo \
"

MATRIX_COMMON_APPS_remove = " \
    matrix-gui-oprofile-demos \
"

MATRIX_APPS_append_omap-a15 += " \
    matrix-gui-apps-dual-camera \
    matrix-gui-apps-image-gallery \
    matrix-multimedia-demo-audiocapture \
    matrix-gui-browser-demos \
"

MATRIX_APPS_append_ti43x = " \
    matrix-multimedia-demo-audiocapture \
"

MATRIX_TOUCH_APPS_keystone = ""
MATRIX_TOUCH_APPS_omapl138 = ""

RDEPENDS_${PN}_remove = "${MATRIX_OPENCV_OPENCL_APPS}"
RDEPENDS_${PN}-extra = " \
    ${@bb.utils.contains('MACHINE_FEATURES','dsp',"${MATRIX_OPENCV_OPENCL_APPS}",'',d)} \
"
