#!/bin/sh
/usr/bin/torproxy.sh &
sleep 60
./db1000n -enable-self-update -enable-primitive false -proxy http://127.0.0.1:8118
