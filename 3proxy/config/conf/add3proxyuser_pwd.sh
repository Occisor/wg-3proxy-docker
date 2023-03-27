#!/bin/sh
#test do not use this
if [ $4 ]; then  
	echo bandlimin $4 $1 >> ./bandlimiters
fi
if [ $3 ]; then  
	echo countin \"`wc -l ./counters|awk '{print $1}'`/$1\" D $3 $1 >> ./counters
fi
if [ $2 ]; then  
	echo $1:`/bin/mkpasswd --method=md5crypt $$ $2` >> ./passwd
else
	echo usage: $0 username password [day_limit] [bandwidth]
	echo "	"day_limit - traffic limit in MB per day
	echo "	"bandwidth - bandwith in bits per second 1048576 = 1Mbps
fi

