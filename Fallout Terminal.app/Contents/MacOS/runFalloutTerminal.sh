#!/bin/bash

DIR=$(dirname "$0")
open "$DIR/../Resources/FalloutTerminal.terminal"
DIR=\'$DIR\'
osascript -e "
tell application \"Terminal\"
    do script \"$DIR/FalloutTerminal.sh\" in front window
end tell"
