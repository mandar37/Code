#!/bin/bash
HOSTS="158.144.51.25
158.144.51.34
158.144.51.32
158.144.51.65
158.144.5.111
158.144.5.112
158.144.5.120
158.144.5.121"
DLIST=""
for h in $HOSTS
do
  fping -u $h >& /dev/null
  if [ $? -ne 0 ]; then
          echo ${h} host is down send email
          #mail -s "Host ${h} down" kapil@theory.tifr.res.in </dev/null
  fi
done
