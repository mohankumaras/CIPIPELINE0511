#!/bin/bash
echo "================= Minor Image Migration ==================="
echo "This is updated after Docker build"
if [ $# -gt 0 ]
then
if [ -f $1 ]
then
 echo "Contents of the file "
 cat $1
else
 echo "file not found "$1
fi
else
 echo "Command line parameters missing"
fi
