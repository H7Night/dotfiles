list=(zsh git nvim)
for i in ${list[*]}; do
    stow -t $HOME $i || exit -1
done