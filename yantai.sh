#!/bin/bash 
#date=$(date -d "-1 day" +"%Y%m%d")
#date=$(date -d "today" +"%Y%m%d")
#real_date=$(date -d "-1 day" +"%Y%m%d")
#echo '获取文件日期：'$date
#echo '对账文件的真实日期：'$real_date
#指定ftp服务器的ip  
serverip=198.18.66.58
#指定ftp服务器的ftp用户  
serverport=21
#指定ftp服务器的端口  
serveruser=BANK1090
#指定ftp服务器的ftp用户密码  
serverpass=BANK1090@
#指定client主机本地下载文件存放的目录  
localdir=/app/finance/upload/YanTai
#指定server主机的ftp目录  
remotedir=/upload
#指定server主机的ftp备份目录
#remotebakdir=/bak
#AD00000002FFFF2019091711400000001
#匹配对方对账文件的正则表达式
pattern="1090_20200509235959.txt"
#本地保存的文件名
localfilename=$pattern
#指定server主机的主机名  
#host=test_host  
#判断文件是否存在，存在则不进行下载
echo "本地文件存储路径:"$localdir"/"$localfilename
#if [ -f $localdir"/"$localfilename ];then
#echo "文件已下载，本次任务退出"
#exit
#fi 
echo "***********************Starting FTP upload on yantai  by date :" $date"*************************"
ftp_cmd(){
ftp -i -v -n <<!
open $serverip $serverport
user $serveruser $serverpass
binary
cd $remotedir
lcd $localdir
$*
bye
!
}

#files=$(ftp_cmd ls -lrt|awk '$9  ~ /'$pattern'/ {print $9}')
files=$(ftp_cmd ls -lrt|awk ' $9 ~/'$pattern'/ {print $9}')

# 判断文件是否为空，不为空则下载该文件
#echo '文件名称:'$files
#if [ ! $files ]; then
echo '文件正在上传'
#else
ftp_cmd put $files $localfilename
#fi

#判断文件是否下载成功，成功则将远程ftp的文件移动到bak目录
echo $localdir"/"$localfilename
if [ -f $localdir"/"$localfilename ];then
#ftp_cmd rename $files $remotebakdir"/"$files
echo '文件已上传'
else
echo '文件不存在'
fi
#连接ftp服务器 
#echo $serverip
#echo $filename 
#ftp -ivn $serverip $serverport<<EOF
#user $serveruser $serverpass
#cd $remotedir
#list = ls
#print($list)
#mget $filename $localfilename
#close
#bye
#EOF
echo "*****************************FTP Download End******************************************************"


