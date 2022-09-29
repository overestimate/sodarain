# sodarain
an extremely scuffed untethered jailbreak based on asdfugi/haxx, odyssey-team/taurine, and elihwyma/Pogo installed using another exploit (i.e. checkra1n)

# compatibility
in theory? any checkm8-vulnerable device on ios14. unknown support for non-checkm8 and <14 and >=15.  
in practice? not tested

# installation
1. boot into a working jailbreak
2. releases, latest jb.zip, extract on device.
3. run `install_part1.sh` on-device
4. make sure no errors occured
6. fix fileproviderctl (see FPCTL.md)
7. run `install_part2.sh` on-device
8. make sure no errors occured
9. reboot
10. it hopefully works

# why did you do it in 2 parts and not 1?
trying to make sure you (me, i have adhd) don't mess up the system too bad by accidentally skipping a step.

# removal
1. remove `/sbin/launchd` and copy `/sbin/launchd.real` -> `/sbin/launchd`
2. remove `/usr/bin/fileproviderctl` and copy `/System/Library/PrivateFrameworks/CoreAnalytics.framework/Support/analyticsd` -> `/usr/bin/fileproviderctl`
3. remove `/usr/local/bin/fileproviderctl_internal`, `/usr/local/bin/haxx`, `/var/haxx` (directory), `/var/sodarain` (directory), `/usr/local/bin/break.sh`, and `/usr/local/bin/PogoHelper`

# oops it fucked up how to fix?
1. get a copy of [this sshrd thing](https://github.com/Ralph0045/SSH-Ramdisk-Maker-and-Loader)
2. boot into the ssh ramdisk
3. remove `/sbin/launchd` and copy `/sbin/launchd.real` -> `/sbin/launchd`
4. retry installation or manually run thru steps again (or just stay jailed)

# known issues
none so far, lets not keep it that way.