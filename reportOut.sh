#!/bin/bash
#
# This script sends a sysrc return code for a job that previously announced itself 
# with a given ESMGUID variable (uuid), back to ESM for processing.
# 
# It is intended to be called from sasbatch.sh, after the $rc has been set in this format:
# 
# $ESMHOME/reportOut.sh $ESMGUID "$ESMJOBNAME" $rc "$LSB_JOBNAME"
# 

# ESM global settings from file should be sourced by sasbatch.sh, where ESMNODENAME is coming from
# source $(dirname $0)/conf/esmconfig.sh


# tell ESM the job name, RC and optionally flow name associated with this uuid
echo "[{\"uuid\":\"$1\", \"text\":\"$2\", \"returnCode\":$3, \"flow\":\"$4\"}]" > $ESMEVENTS/highlightEnd_$ESMNODENAME_$1
