# install_part1.sh (c) overestimate 2022-2022, to the public domain.

# stop if not root
if [ "$EUID" -ne 0 ]
  then echo "please run with sudo"
  exit
fi

echo "create directory structure"
mkdir /var/sodarain
mkdir /usr/local/bin/pogohelper
mkdir /var/haxx

echo "set flags for folders created"
#/var/sodarain
chmod 0755 /var/sodarain
chown mobile:mobile /var/sodarain
#/usr/local/bin/pogohelper
chown 0755 /usr/local/bin/pogohelper
chown mobile:mobile /usr/local/bin/pogohelper
#/var/haxx
chmod 0755 /var/haxx
chown mobile:mobile /var/haxx

echo "copy files"
cp /sbin/launchd /sbin/launchd.real
cp ./files/haxx /usr/local/bin/haxx

cp ./files/break.sh /usr/local/bin/break.sh
cp ./files/PogoHelper /usr/local/bin/pogohelper/PogoHelper
cp ./files/bootstrap.tar /usr/local/bin/pogohelper/bootstrap.tar
cp ./files/amfidebilitate /usr/local/bin/amfidebilitate

echo "set flags for new files"
chmod 0755 /usr/local/bin/haxx

chmod 0755 /usr/local/bin/break.sh
chmod 0755 /usr/local/bin/pogohelper/PogoHelper
chmod 0644 /usr/local/bin/pogohelper/bootstrap.tar
chmod 0755 /usr/local/bin/amfidebilitate

echo "done"