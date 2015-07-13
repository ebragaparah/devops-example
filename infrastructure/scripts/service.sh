#!/bin/sh
### BEGIN INIT INFO
# Provides:          helloworld
# Required-Start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# X-Interactive:     true
# Short-Description: Start/stop helloworld server
### END INIT INFO

case $1 in
    start)
        echo "Starting helloworld..."
        if [ ! -f /home/vagrant/app/pid ]; then
            nohup java -Dserver.port=8088 -jar /home/vagrant/app/helloworld.jar /home/vagrant/app 2>> /home/vagrant/app/logs.txt >> /home/vagrant/app/logs.txt &
            echo $! > /home/vagrant/app/pid
            echo "helloworld started ..."
        else
            echo "helloworld is already running ..."
        fi
    ;;
    stop)
        if [ -f /home/vagrant/app/pid ]; then
            PID=$(cat /home/vagrant/app/pid);
            echo "Stopping helloworld..."
            kill $PID;
            echo "helloworld stopped ..."
            rm /home/vagrant/app/pid
        else
            echo "helloworld is not running ..."
        fi
    ;;
    restart)
        if [ -f /home/vagrant/app/pid ]; then
            PID=$(cat /home/vagrant/app/pid);
            echo "Stopping helloworld...";
            kill $PID;
            echo "helloworld stopped ...";
            rm /home/vagrant/app/pid

            echo "Starting helloworld..."
            nohup java -Dserver.port=8088 -jar /home/vagrant/app/helloworld.jar /home/vagrant/app 2>> /home/vagrant/app/logs.txt >> /home/vagrant/app/logs.txt &
            echo $! > /home/vagrant/app/pid
            echo "helloworld started ..."
        else
            echo "helloworld is not running ..."
        fi
    ;;
esac
