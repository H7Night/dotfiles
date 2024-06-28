BATTERY_CLICK_SCRIPT="open 'x-apple.systempreferences:com.apple.preference.battery'"

sketchybar --add item battery right                                       \
               --set battery update_freq=10                                   \
                       icon.padding_left=$PADDINGS                                   \
                       icon.padding_right=$PADDINGS                                   \
                       icon.color=0xff9ac868                                  \
                       icon.y_offset=-1                                       \
                       label.padding_right=$PADDINGS                           \
                       background.color=$BACKGROUND_COLOR                     \
                       background.height=$BACKGROUND_HEIGHT                   \
                       background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                       background.padding_right=$BACKGROUND_PADDINGS                     \
                       script="$PLUGIN_DIR/battery.sh"                        \
                       click_script="$BATTERY_CLICK_SCRIPT"                   \
