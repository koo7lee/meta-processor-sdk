PR_append = "-tisdk1"

MATRIX_APPS_remove_omap-a15 = "matrix-multimedia-demo-h264dec"
MATRIX_APPS_remove_omap-a15 = "matrix-multimedia-demo-mpeg4aacdec"
MATRIX_APPS_remove_omap-a15 = "matrix-multimedia-demo-mpeg4dec"

MATRIX_APPS_append_omap-a15 = " \
    ${@base_contains('MACHINE_FEATURES','mmip','matrix-multimedia-demo-ivahdh264dec','matrix-multimedia-demo-h264dec',d)} \
    ${@base_contains('MACHINE_FEATURES','mmip','matrix-multimedia-demo-ivahdh264enc','',d)} \
    ${@base_contains('MACHINE_FEATURES','mmip','matrix-multimedia-demo-vip-vpe-ivahdmpeg4encdec','',d)} \
"