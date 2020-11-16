#!/bin/bash

systemctl disable -q lounge >> /dev/null 2>&1
systemctl stop -q lounge

npm uninstall -g thelounge --save >> /dev/null 2>&1

deluser lounge >> /dev/null 2>&1
rm -rf /home/lounge

rm -f /etc/systemd/system/lounge.service
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "lounge"
