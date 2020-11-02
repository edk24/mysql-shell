#!/bin/bash 
# ================
# author ”‡–°≤® 
# ================

host=`sed '/^host=/!d;s/.*=//' .env`
user=`sed '/^user=/!d;s/.*=//' .env`
pass=`sed '/^pass=/!d;s/.*=//' .env`
port=`sed '/^port=/!d;s/.*=//' .env`

mysql -h$host -u$user -p$pass -P$port
