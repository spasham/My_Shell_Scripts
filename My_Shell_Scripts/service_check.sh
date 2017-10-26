#!/bin/bash


#wing
service=vsftpd
#email=user@domain.com
###stop editing

host=`hostname -f`
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running"
else
echo "Service is not running, hence starting it now..."
systemctl start vsftpd
echo "nservice started..!!"

#if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
#then
#subject="$service at $host has been started"
#echo "$service at $host wasn't running and has been started" | mail -s "$subject" $email
#else
#subject="$service at $host is not running"
#echo "$service at $host is stopped and cannot be started!!!" | mail -s "$subject" $email
#fi
fi
