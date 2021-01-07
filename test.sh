#!/bin/bash

function pwm() {
if ! [ -x pwm$1 ] ; then
echo $1 >export
fi
echo 0 >pwm$1/enable
echo 1000000 >pwm$1/period
echo ${2}00000 >pwm$1/duty_cycle
echo 1 >pwm$1/enable
}

function all() {
pwm 0 $1
pwm 1 $1
pwm 2 $1
pwm 3 $1
pwm 4 $1
pwm 5 $1
pwm 6 $1
pwm 7 $1
pwm 8 $1
pwm 9 $1
pwm 10 $1
pwm 11 $1
pwm 12 $1
pwm 13 $1
pwm 14 $1
pwm 15 $1
#pwm 16 $1 //all channel
}


while [ 1 ]
do
#test pwm00-pwm15
cd /sys/class/pwm/pwmchip4
all 1
sleep 1
all 2 
sleep 1
all 5
sleep 1
all 9
sleep 1

#test pwm16-pwm31
cd /sys/class/pwm/pwmchip21
all 1
sleep 1
all 2 
sleep 1
all 5
sleep 1
all 9
sleep 1
done

