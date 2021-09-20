#!/bin/bash

MY_JOB_NAME="";
typeset -a ARRAY=( $@ )
for (( i=1; i <= ${#}; i++ ))
do
  PARAM=${ARRAY[i]}
  if [[ $PARAM == port* ]] ; then
    MY_PORT="$PARAM"
  fi
done
if [ ${#MY_PORT} -eq 0 ] ; then
  echo "unknown";
  exit 1;
else
  echo ${MY_PORT:5}
fi
