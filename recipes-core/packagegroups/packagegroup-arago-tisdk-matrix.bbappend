PR_append = "-tisdk40"

MATRIX_SGX_DEMOS_remove_omap-a15 = " \
    matrix-3d-demo-kmscubevideo \
"

MATRIX_COMMON_APPS_remove = " \
    matrix-gui-oprofile-demos \
"

MATRIX_COMMON_APPS_append = " \
    ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'matrix-gui-weston-terminal-demo', '', d)} \
"

MATRIX_APPS_append_omap-a15 += " \
    matrix-gui-apps-dual-camera \
    matrix-gui-apps-image-gallery \
    matrix-multimedia-demo-audiocapture \
"

MATRIX_APPS_append_ti43x = " \
    matrix-multimedia-demo-audiocapture \
"

MATRIX_TOUCH_APPS = " \
    ${@bb.utils.contains('MACHINE_FEATURES', 'sgx', 'matrix-gui-touch-demos', '', d)} \
"

MATRIX_TOUCH_APPS_keystone = ""


RDEPENDS_${PN} += " \
    ${MATRIX_TOUCH_APPS} \
"
