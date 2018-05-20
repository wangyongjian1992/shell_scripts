#!/bin/bash


# Function:  ping address from 121.248.51.176 to 121.248.51.254,if ping succeeded ,echo up,or echo down
# -c1 means ping once, -w1 means wait for 1 second

for i in `seq 176 254`
do
    ping -c1 -w1 121.248.51.$i > /dev/null && echo "121.248.51.$i is up!" || echo "121.248.51.$i is down!"
done
