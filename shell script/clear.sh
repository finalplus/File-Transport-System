#!/bin/sh

HOSTNAME="127.0.0.1"
PORT="3306"
USERNAME="root"
PASSWORD="123456"

DBNAME="serverLog"  #数据库名称
TABLENAME="serverStartInfo" #数据库中表的名称

#$mysql -u $USERNAME -p$PASSWORD $DBNAME
mysql -u ${USERNAME} -p$PASSWORD ${DBNAME} << EOF
TRUNCATE TABLE ${TABLENAME}
EOF

DBNAME="md5"  #数据库名称
TABLENAME="md5table" #数据库中表的名称

#$mysql -u $USERNAME -p$PASSWORD $DBNAME
mysql -u ${USERNAME} -p$PASSWORD ${DBNAME} << EOF
TRUNCATE TABLE ${TABLENAME}
EOF