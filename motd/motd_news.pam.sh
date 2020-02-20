#!/bin/bash
# Collect useful information about your system
# $USER is automatically defined
export TERM=xterm-256color
HOSTNAME=`uname -n`
KERNEL=`uname -r`
CPU=`uname -p`
ARCH=`uname -m`
# The different colours as variables
W="\033[01;37m"
B="\033[01;34m"
R="\033[01;31m" 
X="\033[00;37m"
clear # to clear the screen when showing up
echo -e "$B=============================================================================" 
echo -e "	$W Welcome $B ${PAM_USER} $W to $B $HOSTNAME                " 
echo -e "	$R ARCH   $W= $ARCH                                   "
echo -e "	$R KERNEL $W= $KERNEL                                 "
echo -e "	$R CPU    $W= $CPU                                    "
echo -e "$X" 

echo -e "$W"
echo -e "Latest from Brian Krebs" 
echo -e "$B=============================================================================" 
echo -e "$W" 
curl -s https://krebsonsecurity.com/feed/ | xsltproc /usr/local/share/rss_top.xsl - | elinks -dump -dump-color-mode 1 

echo -e "$B=============================================================================" 
echo -e "$X" 

