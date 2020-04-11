CURRENT_LAYOUT=$(setxkbmap -query | grep layout| tail)
PRINT=" ENG"
COMPARE_STRING="layout:     pt"

if [ "$CURRENT_LAYOUT" = "$COMPARE_STRING" ]; then
	PRINT=" PT"
fi

echo ${PRINT}
