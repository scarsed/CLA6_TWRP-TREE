git clone https://github.com/transsion-mt6789/twrp-device_transsion_mt6789-common.git -b fox_12.1-tranos15 device/transsion/mt6789-common
export OF_SCREEN_H=2400
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1

# Important build settings
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

# flashlight
export OF_FLASHLIGHT_ENABLE=0

# ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE="5G"
export CCACHE_DIR=".ccache"
