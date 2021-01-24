# Firejail profile for kdiff3
# Description: KDiff3 is a file and folder diff and merge tool.
# This file is overwritten after every install/update
# Persistent local customizations
include kdiff3.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/kdiff3fileitemactionrc
noblacklist ${HOME}/.config/kdiff3rc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

###whitelist ${HOME}/.config/kdiff3fileitemactionrc
###whitelist ${HOME}/.config/kdiff3rc
###include whitelist-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
net none
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
seccomp
shell none

disable-mnt
private-bin  kdiff3
private-cache
private-dev
###private-etc 
private-tmp

dbus-user none
dbus-system none
