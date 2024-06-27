sketchybar -m --add item date_time right \
  --set date_time icon= \
             icon.padding_left=8 \
             icon.padding_right=0 \
             label.padding_right=9 \
             label.padding_left=6 \
             label.color=0xffeceff4 \
             update_freq=20 \
             background.color=0xff57627A \
             background.height=21 \
             background.padding_right=12 \
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