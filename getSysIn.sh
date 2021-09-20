#!/bin/bash

MY_JOB_NAME="";
typeset -a ARRAY=( $@ )
for (( i=0; i <= ${#}; i++ ))
do
  PARAM=${ARRAY[i]}
  if [ "$PARAM" == "-sysin" ] ; then
    MY_JOB_NAME=${ARRAY[++i]}
  fi
done
if [ ${#MY_JOB_NAME} -eq 0 ] ; then
  echo "interactive";
  exit 1;
else
  echo "$MY_JOB_NAME"
fi
