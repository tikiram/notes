nmap -p 5555 192.168.1.22
nmap -p 80 google.com

adb kill-server
adb start-server
adb tcpip 5555
adb -s <device_id> tcpip 5555
adb connect 192.168.1.30:5555
adb devices


adb devices -l
adb -s <device_id> tcpip 5555


adb -s deviceName disconnect

adb disconnect

https://medium.com/@amanshuraikwar.in/connecting-to-android-device-with-adb-over-wifi-made-a-little-easy-39439d69b86b