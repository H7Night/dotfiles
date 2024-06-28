WIFI_CLICK_SCRIPT="open 'x-apple.systempreferences:com.apple.preference.network?Wi-Fi'"

sketchybar --add item wifi right                                             \
               --set wifi update_freq=1                                          \
                          icon=                                                 \
                          icon.padding_left=$ICON_PADDING                                   \
                          icon.padding_right=2                                   \
                          icon.color=0xff9ece6a                                  \
                          label.padding_right=$LABEL_PADDING                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=$BACKGROUND_PADDINGS                             \
                          script="$PLUGIN_DIR/wifi.sh"                           \
                          click_script="$WIFI_CLICK_SCRIPT"                      \
