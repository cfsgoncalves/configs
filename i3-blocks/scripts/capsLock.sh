#!/dev/bin/zsh

caps=$(xset -q | grep Caps | awk '{ print $2, $3, $4 }')
output="Caps Lock: on"

if [[ "$caps" = "$output" ]]
then
	echo "";
else
	echo "";
fi
