# loongson1c_robot

智龙机器人扩展板，完全兼容龙芯1C机器人板。 
给智龙V3主板增加32路PWM  

接线说明:  3个脚中，靠近pwmxx符号的脚，是PWM信号，中间脚是GND,靠近线路板边缘的脚是3.3V输出，接线时，请注意鉴别.  
  
sch文件时gEDA软件的电路图  
pcb文件时gEDA软件的电路板  
  
gEDA在linux下debian安装方法:  
apt-get install geda 

电路板，散件，成品在这里
https://item.taobao.com/item.htm?id=596850039455  

linux-3.18.140内核源码:  
https://github.com/lshw/loongson1-kernel3.18  

内核源码对32路PWM的支持的代码:  
https://github.com/lshw/loongson1-kernel3.18/commit/cbf4083e3c402fe7ac78e9f86f72692ada3f601d  

编译好的内核:  
https://mirrors.cloud.tencent.com/loongson/loongson1c_bsp/debian/vmlinuz-3.18.140-g4cc0c2f6  

编译好的内核包:  
https://mirrors.cloud.tencent.com/bjlx/pool/main/l/linux-upstream/linux-image-3.18.140-g4cc0c2f6_3.18.140-g4cc0c2f6-128_mipsel.deb  

用编译好的内核启动后， 在  
/sys/class/pwm/pwmchip4/  
和  
/sys/class/pwm/pwmchip21/  
各有16路pwm输出 pwm0-pwm15, 对pwm16进行操作， 是对所有16个通道同时进行的  

test.sh  
是测试脚本  
