#!/bin/bash
rm Packages{,.bz2}
dpkg-scanpackages -m . > Packages
bzip2 Packages
ncftpput -u <username> -p <password> <ftp.address> repo/ CydiaIcon.png
ncftpput -u <username> -p <password> <ftp.address> repo/ Release
ncftpput -u <username> -p <password> <ftp.address> repo/Packages/ debs/*
ncftpput -u <username> -p <password> <ftp.address> repo/ Packages.bz2