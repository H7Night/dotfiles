# Disk info
sketchybar --add item disk right                                                  \
               --set disk update_freq=10                                             \
                          icon=                                                     \
                          icon.padding_left=$ICON_PADDING                                       \
                          icon.padding_right=2                               \
                          icon.color=0xfffbc02d                                      \
                          icon.y_offset=-1                                           \
                          label.padding_right=$LABEL_PADDING                              \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right="$BACKGROUND_PADDINGS"                         \
                          script="$PLUGIN_DIR/disk.sh"                               \
                          click_script="open -a \"System Preferences\"; osascript -e 'tell application \"System Preferences\" to activate' -e 'tell application \"System Preferences\" to reveal pane id \"com.apple.settings.Storage\"'"

# Cpu info
sketchybar --add item cpu right                                                   \
               --set cpu  update_freq=1                                             \
                          icon=                                                     \
                          icon.padding_left=$ICON_PADDING                                \
                          icon.padding_right=2                               \
                          icon.color=0xfff6768e                                      \
                          icon.y_offset=-1                                           \
                          label="??%"                                                \
                          label.padding_right=$LABEL_PADDING                              \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right="$BACKGROUND_PADDINGS"                         \
                          script="$PLUGIN_DIR/cpu.sh"                                \
                          click_script="open -a \"Activity Monitor\"; osascript -e 'tell application \"Activity Monitor\" to activate' -e 'tell application \"System Events\" to tell process \"Activity Monitor\" to click radio button 1 of radio group 1 of UI element 3'"

# Mem info
sketchybar --add item mem right                                                   \
               --set mem  update_freq=1                                             \
                          icon=󰍛                                                     \
                          icon.font.size=20                                          \
                          icon.padding_left=$ICON_PADDING                                \
                          icon.padding_right=2                                \
                          icon.color=0xff4ed2e3                                      \
                          icon.y_offset=-1                                           \
                          label="??%"                                                \
                          label.padding_right=$LABEL_PADDING                              \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right="$BACKGROUND_PADDINGS"                         \
                          script="$PLUGIN_DIR/mem.sh"                                \
                          click_script="open -a \"Activity Monitor\"; osascript -e 'tell application \"Activity Monitor\" to activate' -e 'tell application \"System Events\" to tell process \"Activity Monitor\" to click radio button 2 of radio group 1 of UI element 3'"

