#! /bin/bash

# curl cht.sh/{language}/query+string
# curl cht.sh/{core-util}~{operation}

languages=`echo "c cpp python typescript java" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk zip" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if printf $languages | grep -qs $selected; then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi
