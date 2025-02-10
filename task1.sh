sh infinite.sh
ps | grep ' sh' | awk '{print $1}'
kill -9 $(ps | grep ' sh' | awk '{print $1}')
