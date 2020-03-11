pid=`ps -ef | grep launcher-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   kill -9 $pid
fi

nohup java -Djava.library.path=./jnilib/linux-x86_64 -jar ./launcher-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
exit 0
