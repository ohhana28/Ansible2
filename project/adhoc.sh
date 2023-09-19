#!/bin/bash

ansible all -m yum_repository \
-a "name=MyBase description='base software' baseurl='http://192.168.10.10/pkg/BaseOS' gpgcheck=no"

ansible all -m yum_repository \
-a "name=MyAppStream description='Appstream software' baseurl='httpd://192.168.10.10/pkg/AppStream/' gpgcheck=no"
