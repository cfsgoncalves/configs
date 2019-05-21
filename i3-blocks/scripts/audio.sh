[ -z "$1" ] && icon="" || icon="$1"

NCMP=$(mpc | awk '/^\[playing\]/{print $1}')
_NCMP=$(mpc | head -1 | cut -d '.' -f 1)
TIME=$(mpc | head -2 | tail -1 | cut -d ' ' -f 5)

if [ "$NCMP" = "[playing]" ];then 
    echo " $_NCMP [$TIME]"
else
    echo " $_NCMP"
fi
