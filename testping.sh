#!/bin/bash
HOSTS=" IP Address"
DLIST=""
for h in $HOSTS
do
  fping -u $h >& /dev/null
  if [ $? -ne 0 ]; then
          echo ${h} host is down send email
          mail -s "Host ${h} down" Email-id </dev/null
  fi
done
