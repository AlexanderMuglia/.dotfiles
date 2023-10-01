#!/usr/bin/env bash

#echo "[+] Installing pip for python2 and python3"
#curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#python2 get-pip.py --user
#python3 get-pip.py --user
#rm get-pip.py

echo "[+] Downloading pip dependencies"
python3 -m pip download future
python3 -m pip download requests urllib3
python3 -m pip download pyyaml
python3 -m pip download pynacl pycrypto
#python3 -m pip download voltron pygments
python3 -m pip download dpkt pcapy pypcap python-ptrace scapy
#python3 -m pip download pypdf2
python3 -m pip download pwntools
python3 -m pip download jupyter pandas
python3 -m pip download matplotlib
python3 -m pip download numpy
python3 -m pip download argcomplete
