#!/bin/bash
# =====================
# author: ÓàÐ¡²¨ 
# =====================

host=`sed '/^host=/!d;s/.*=//' .env`
user=`sed '/^user=/!d;s/.*=//' .env`
pass=`sed '/^pass=/!d;s/.*=//' .env`
port=`sed '/^port=/!d;s/.*=//' .env`

if [ ! -d "backup" ]; then 
        mkdir buckup
fi


mysql -h$host -u$user -p$pass -P$port -e"show databases;"
echo 'input buckup database:'
read db
filename=buckup/$db-`date +%Y%m%d_%H-%M-%S.sql`
echo $filename
mysqldump -h$host -u$user -p$pass -P$port $db > $filename

