#! /bin/bash
temp=$(($(</sys/class/thermal/thermal_zone0/temp) / 1000))
freq=$(($(</sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq) / 1000))
echo -n "BCM2835 SoC temperature is $temp deg.(C) "
echo "| temp=$temp;85;85;0;100 cpufreq=$freq;1200;1200;0;1200"