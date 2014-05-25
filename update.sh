#!/bin/bash
rm package{,.bz2}
dpkg-scanpackages -m debs /dev/null > package
bzip2 package

USERNAME="Your Username"
PASSWORD="Your Password"
FTPADDRESS="Your FTP Address"

ncftpput -u $USERNAME -p $PASSWORD $FTPADDRESS /public_html/repo/ CydiaIcon.png
ncftpput -u $USERNAME -p $PASSWORD $FTPADDRESS /public_html/repo/ Release
ncftpput -u $USERNAME -p $PASSWORD $FTPADDRESS /public_html/repo/debs/ debs/*
ncftpput -u $USERNAME -p $PASSWORD $FTPADDRESS /public_html/repo/ package.bz2
