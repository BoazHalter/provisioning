#!/bin/bash

#yum install  python34
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
cp /root/.local/bin/pip /bin/
pip install ansible
