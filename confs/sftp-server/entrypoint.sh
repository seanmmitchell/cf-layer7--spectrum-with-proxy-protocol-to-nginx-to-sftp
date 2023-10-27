#!/bin/sh

echo "==== Prepping Enviornment..."

echo "== Installing updates and packages..."
echo "Installing Updates..."
apk update
apk upgrade
echo "Installing OpenSSH..."
apk add openssh

echo "== Adding users and groups..."
echo "Creating SFTP group..."
addgroup sftp

echo "Securing SFTP root..."
chown root:root /storage
chmod 755 /storage

echo "Adding test user..."
adduser -D -s /sbin/nologin -h /storage/test test
mkdir /storage/test
chown test:test /storage/test
chmod 770 /storage/test
adduser test sftp
echo test:test | chpasswd

echo "==== Loading Service..."
/usr/sbin/sshd -D -e
# sshd -D will load into terminal
#echo "==== Loading Shell..."
#/bin/sh
