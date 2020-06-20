#!/bin/bash 
#date=$(date -d "-1 day" +"%Y%m%d")
date=$(date -d "today" +"%Y%m%d")
#date=20200603
real_date=$(date -d "-1 day" +"%Y%m%d")
#real_date=20200603
echo '获取文件日期：'$date
echo '对账文件的真实日期：'$real_date
#指定ftp服务器的ip  
serverip=182.92.158.182
#指定ftp服务器的ftp用户  
serverport=21
#指定ftp服务器的端口  
serveruser=weifuchong
#指定ftp服务器的ftp用户密码  
serverpass=weifuchong@123
#指定client主机本地下载文件存放的目录  
localdir=/app/finance/dzfile/shijiazhuang/ftpPath
#localdir=/app/wfc
#logfile=../log/ftp_download.log  
#指定server主机的ftp目录  
remotedir=/
#指定server主机的ftp备份目录
remotebakdir=/bak
#filename=BDA11691210000100440400000${date}0300150000000001
#匹配对方对账文件的正则表达式
pattern="${real_date}-000800000000001-微付充.txt"
#本地保存的文件名
localfilename="${real_date}-000800000000001-JL.txt"
#指定server主机的主机名  
#host=test_host  
#判断文件是否存在，存在则不进行下载
echo "本地文件存储路径:"$localdir"/"$localfilename
if [ -f $localdir"/"$localfilename ];then
echo "文件已下载，本次任务退出"
exit
fi 
echo "***********************Starting FTP Download on jilin  by date :" $date"*************************"
ftp_cmd(){
ftp -i -v -n <<!
open $serverip $serverport
user $serveruser $serverpass
passive
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
echo '文件名称:'$files
if [ ! $files ]; then
echo '文件是空的'
else
ftp_cmd get $files $localfilename
fi

#判断文件是否下载成功，成功则将远程ftp的文件移动到bak目录
echo $localdir"/"$localfilename
if [ -f $localdir"/"$localfilename ];then
#ftp_cmd rename $files $remotebakdir"/"$files
echo '文件下载成功'
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


