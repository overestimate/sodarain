# install_part2.sh (c) overestimate 2022-2022, to the public domain.

# stop if not root
if [ "$EUID" -ne 0 ]
  then echo "please run with sudo"
  exit
fi

if [[ $(ls /sbin/launchd.real) ]]; then
  echo "replace launchd"
  \cp -f ./files/launchd_haxx /sbin/launchd
  chmod 0755 /sbin/launchd
  chown root:wheel /sbin/launchd
  echo "done"
  echo "make sure you have a dropbear key from this device (if 64-bit) before you reboot."
  exit
else
  echo "please run install_part1.sh first"
fi