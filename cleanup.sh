#! /bin/sh
#
# Quick cleanup script to get rid of existing logs

rm -f *.log *.std??? agent/* controller/* cluster/* 2>/dev/null
rm -rf cluster/log-queue
