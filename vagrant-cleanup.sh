#!/usr/bin/env bash

vagrant halt
vagrant destroy -f
rm -rf .vagrant/
rm vm03.vbox.local.dev-192.168.100.103.txt
rm ubuntu-xenial-16.04-cloudimg-console.log
ls -al

exit 0
