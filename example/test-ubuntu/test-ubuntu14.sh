#! /bin/bash

Enfuzzer-host file -n ubuntu-14 -f boringssl.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f c-ares.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f in.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f guetzli.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f lcms.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f libarchive.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f libssh.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f libxml.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f openssl.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f pcre.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f proj4.tar.gz -d /

Enfuzzer-host file -n ubuntu-14 -f re2.tar.gz -d /


Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz boringssl.tar.gz" > 41.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz c-ares.tar.gz" > 42.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz guetzli.tar.gz" > 43.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz lcms.tar.gz" > 44.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz libarchive.tar.gz" > 45.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz libssh.tar.gz" > 46.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz libxml.tar.gz" > 47.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz openssl.tar.gz" > 48.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz pcre.tar.gz" > 49.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz proj4.tar.gz" > 410.log 2>&1

Enfuzzer-host execute -n ubuntu-14 -i "/opt/enfuzzer/Enfuzzer build -gz re2.tar.gz" > 411.log 2>&1

