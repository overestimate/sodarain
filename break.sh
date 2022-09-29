# break.sh (c) overestimate 2022-2022, to the public domain.

NOW=$( date '+%F_%H:%M:%S' )

if [ "$EUID" -ne 0 ]
  then echo "[break.sh @ $NOW] not running as EUID 0?" > /var/sodarain/break.log
  exit
fi

echo "[break.sh @ $NOW] hello from UID 0" > /var/sodarain/break.log


NOW=$( date '+%F_%H:%M:%S' )
echo "[break.sh @ $NOW] executing amfidebilitate" >> /var/sodarain/break.log

/usr/local/bin/amfidebilitate > /var/sodarain/amfi.log #TODO: figure out parameters to call with

NOW=$( date '+%F_%H:%M:%S' )
echo "[break.sh @ $NOW] amfidebilitate execution done, logged to amfi.log" >> /var/sodarain/break.log

NOW=$( date '+%F_%H:%M:%S' )
echo "[break.sh @ $NOW] executing pogohelper" >> /var/sodarain/break.log

# TODO: make sure this works
/usr/local/bin/pogohelper/PogoHelper /usr/local/bin/pogohelper/bootstrap.tar > /var/sodarain/strap.log

NOW=$( date '+%F_%H:%M:%S' )
echo "[break.sh @ $NOW] pogohelper done, logged to pogo.log" >> /var/sodarain/break.log
echo "[break.sh @ $NOW] i'm done" >> /var/sodarain/break.log