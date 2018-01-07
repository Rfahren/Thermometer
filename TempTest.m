clc
clear
a= arduino();
addrs = scanI2CBus(a);
temp102=i2cdev(a, '0x68');
write(temp102,0,'uint8');
data=read(temp102,2,'uint8');
temperature=(double(bitshift(int16(data(1)),4))+double(bitshift(int16(data(2)),-4)))*0.0625;
TempF=1.8*(temperature-273)+32