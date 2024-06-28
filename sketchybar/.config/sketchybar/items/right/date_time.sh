sketchybar -m --add item date_time right \
              --set date_time label.padding_right=$LABEL_PADDING \
                              label.padding_left=6 \
                              label.color=$ICON_COLOR \
                              update_freq=20 \
                              background.color=$BACKGROUND_COLOR \
                              background.height=$BACKGROUND_HEIGHT \
                              background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                              background.padding_right=$BACKGROUND_PADDINGS \
                              background.padding_left=$BACKGROUND_PADDINGS \
                              script="~/.config/sketchybar/plugins/date_time.sh" \

#sketchybar --add item time right \
#           --set time update_freq=1 \
#                      icon.drawing=off \
#                      script="~/.config/sketchybar/plugins/date_time.sh" \
#                      background.color=0xff3C3E4F \
#                      background.padding_left=0

# sketchybar --add item time_logo right\
#            --set time_logo icon= \
#                            label.drawing=off \
#                            icon.color=0xff121219 \
#                            label.drawing=off \
#                            background.color=0xffF5E3B5