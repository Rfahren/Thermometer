clc
clear all
a=arduino();
%c1=2.108508173e-3;
%c2=0.7979204727e-4;
%c3=0.7979204727e-7;
%R=10000;
tempPin='A0';
tempCfromVolts=@(volts) (volts-0.5)*10;
%samplingTimes=0:2:30;
%numSamples=length(samplingTimes);
tempC=zeros(60,1);
tempF=tempC;
for index=1:60
	volts=readVoltage(a,tempPin);
	tempC(index)=tempCfromVolts(volts);
	tempF(index)=tempC(index)*9/5+32;
	
	fprintf('Temp  %5.2f F \n',tempF(index));
end
clear a
