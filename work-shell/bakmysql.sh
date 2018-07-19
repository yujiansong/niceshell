#!/bin/bash
#备份数据库
#author:yujiansong
#
backupdir=/tmp/mysql-data-bak
time=` date +%Y%m%d%H `
/usr/local/mysql/bin/mysqldump --defaults-extra-file=/etc/my.cnf onebase | gzip > $backupdir/onebase$time.sql.gz
/usr/local/mysql/bin/mysqldump --defaults-extra-file=/etc/my.cnf somshu| gzip > $backupdir/somshu$time.sql.gz
/usr/local/mysql/bin/mysqldump --defaults-extra-file=/etc/my.cnf admin | gzip > $backupdir/admin$time.sql.gz
#删除七天以前的备份数据
find $backupdir -name "name_*.sql.gz" -type f -mtime +7 -exec rm '{}' + > /dev/null 2>&1

