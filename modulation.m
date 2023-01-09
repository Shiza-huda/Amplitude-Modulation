
%Communication Systems 

%TC-307

%Department of Telecommunications Engineering

%SHIZA HUDA 
%Amplitude Modulation 
%CEP Assignment



fs= 5000e5;  %Sampling Frequency

fm1= 60000;  %Message Frequency

fm2= 40000;

fm3= 30000;

fc= 600000;  %Carrier Frequency

nCyl=2;      %Number of waves to be generated

i=0.1;       %Modulation Index

t=0:1/fs:nCyl*1/fm1;  %Defining time 

x=sin(2*pi*fm1*t)+sin(2*pi*fm2*t) +sin(2*pi*fm3*t);    %Message Signal

c=sin(2*pi*fc*t);    %Carrier Signal


%Plotting Message Signal

figure(1);

plot(x,'k');

title ('Message Signal');  

xlabel('Time(s)');  

ylabel('Amplitude');

grid on;

%Spectrum of Message Signal

y=abs(fft(x));

figure(2);

plot(y,'k');

title ('Spectrum of Message Signal');

xlabel('Frequency(Hz)');  

ylabel('Amplitude');

grid on;

%Plotting Carrier Signal

figure(3);

plot(c,'k');

title ('Carrier Signal');  

xlabel('Time(s)');  

ylabel('Amplitude');

grid on;

%Spectrum of Carrier

z=abs(fft(c));

figure(4);

plot(z,'k');

title ('Spectrum of Carrier Signal');  

xlabel('Frequency(Hz)');  

ylabel('Amplitude');

grid on;

%Apmlitude Modulation using Standard Equation

term= (c.*x).*i;

Am= c + term;

figure(5);

plot(Am,'k');

title ('Modulated Signal (1.0)');  

xlabel('Time(s)');  

ylabel('Amplitude');

grid on;
