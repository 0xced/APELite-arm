#!/bin/bash

function status
{
    printf "\e[034m--> $1...\e[0m\n"
}

status "Downloading the APE SDK"
curl -LO# "http://www.unsanity.net/apesdk-26.dmg"

status "Mounting the APE SDK disk image"
hdiutil attach "apesdk-26.dmg"

status "Copying APE Lite"
cp -R "/Volumes/Application Enhancer SDK/APE Lite" .

status "Unmounting the APE SDK disk image"
hdiutil detach -force "/Volumes/Application Enhancer SDK"



status "Downloading Mobile Substrate"
svn checkout http://svn.saurik.com/repos/menes/trunk/mobilesubstrate mobilesubstrate

status "Patching MobileHooker.mm"
patch -p0 < MobileHooker.patch

#status "Downloading CFLogUtilities.h"
#mkdir -p CoreFoundation
#curl -L# -o CoreFoundation/CFLogUtilities.h "http://www.opensource.apple.com/source/CF/CF-550.13/CFLogUtilities.h?txt"
