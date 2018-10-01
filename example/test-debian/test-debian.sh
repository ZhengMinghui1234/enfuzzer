#! /bin/bash

Enfuzzer-host file -n debian-8 -f boringssl.tar.gz -d /

Enfuzzer-host file -n debian-8 -f c-ares.tar.gz -d /

Enfuzzer-host file -n debian-8 -f in.tar.gz -d /

Enfuzzer-host file -n debian-8 -f guetzli.tar.gz -d /

Enfuzzer-host file -n debian-8 -f lcms.tar.gz -d /

Enfuzzer-host file -n debian-8 -f libarchive.tar.gz -d /

Enfuzzer-host file -n debian-8 -f libssh.tar.gz -d /

Enfuzzer-host file -n debian-8 -f libxml.tar.gz -d /

Enfuzzer-host file -n debian-8 -f openssl.tar.gz -d /

Enfuzzer-host file -n debian-8 -f pcre.tar.gz -d /

Enfuzzer-host file -n debian-8 -f proj4.tar.gz -d /

Enfuzzer-host file -n debian-8 -f re2.tar.gz -d /


Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz boringssl.tar.gz" > 1.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz c-ares.tar.gz" > 2.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz guetzli.tar.gz" > 3.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz lcms.tar.gz" > 4.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz libarchive.tar.gz" > 5.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz libssh.tar.gz" > 6.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz libxml.tar.gz" > 7.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz openssl.tar.gz" > 8.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz pcre.tar.gz" > 9.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz proj4.tar.gz" > 10.log 2>&1

Enfuzzer-host execute -n debian-8 -i "/opt/enfuzzer/Enfuzzer build -gz re2.tar.gz" > 11.log 2>&1

