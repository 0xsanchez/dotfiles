status=$(warp-cli status | grep -Po 'Disconnected|Connected|Connecting')

if [ "$status" == 'Connecting' ];then
    :
elif [ "$status" == 'Connected' ];then
    warp-cli disconnect
elif [ "$status" == 'Disconnected' ]; then
    warp-cli connect
fi