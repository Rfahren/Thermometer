clc
clear all
a=arduino();
c1=2.108508173e-3;
c2=0.7979204727e-4;
c3=0.7979204727e-7;
R=10000;
for t=1:10
    t=t+1;
    v=readVoltage(a,'A0');
    R2 =log( R * ((1024./v)- 1));
    T = (1 / (c1 + (c2 + c3*R2*R2)*R2)); % Steinhart–Hart equation
    tempC = T - 273.15;            
    tempF = (tempC * 9.0)/ 5.0 + 32.0;
    fprintf('v=%2.4f\n',v);
end
clear a;