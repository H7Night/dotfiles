SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")
SPACES=()

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  SPACES+=(space.$sid)
  sketchybar --add space space.$sid left \
             --set space.$sid associated_space=$sid \
                              icon=${SPACE_ICONS[i]} \
                              icon.padding_left=10 \
                              icon.padding_right=10 \
                              icon.highlight_color=0xffE48FA8 \
                              background.padding_left=-4 \
                              background.padding_right=-4 \
                              background.color=$BACKGROUND_COLOR \
                              background.drawing=off \
                              label.drawing=off \
#                              click_script="yabai -m space --focus $sid"
done

sketchybar --add item space_separator left \
           --set space_separator icon= \
                                 background.padding_left=23 \
                                 background.padding_right=23 \
                                 label.drawing=off \
                                 icon.color=0xff92B3F5

sketchybar --add item window_title left \
           --set window_title    script="~/.config/sketchybar/plugins/window_title.sh" \
                                 icon.drawing=off \
                                 label.color=0xffb7bdf4 \
           --subscribe window_title front_app_switched