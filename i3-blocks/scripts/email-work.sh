USER="claudiogoncalves@ioacademy.iotech.pt"
PASS="claudiofilipe21"

COUNT=`curl -su $USER:$PASS ioacademy.iotech.pt || echo "<fullcount>unknown number of</fullcount>"`
COUNT=`echo "$COUNT" | grep -oPm1 "(?<=<fullcount>)[^<]+" `
echo $COUNT
if [ "$COUNT" != "0" ]; then
    if [ "$COUNT" = "1" ];then
        WORD="mail";
    else
        WORD="mails";
    fi
fi

