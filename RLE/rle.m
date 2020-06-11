%Created By : Dheeraj Kumar
% IIIt Nagpur
clc;
clear all; 
close all;
ip= randi([0,1],1,100);  %  importing random bits in ip variable 
% ip=[zeros(1,6) ones(1,12) zeros(1,10) ones(1,5)];
len_ip=length(ip);    % finding the length of input sequence
bit=[];    %determining sequence of unique bits in input 
len=[];    %length of each bit in input
count=0;    %counting the bits
for i=1:len_ip-1
    if ip(i) == ip(i+1)  %checking the bits is they are equall or not 
        count=count+1; %increasing the counter if equal
        continue
    end
    bit=[bit ip(i)];
    len=[len count+1];
    count=0;
end
last_bit=ip(i+1);%storing last bit
number=len_ip-sum(len);  %checking the input bit that how many times it occurs
bit=[bit last_bit];  %contains the order of bits 
len=[len number];     %count of the bits i.e. run length (final)

m=max(len);   %finding the largest digit in len array
a=floor(log2(m)+1);
total=length(len)*a;
final_length=length(bit)+total;  %length of encoded signal

if final_length>len_ip
    disp('Negative compression');
    t=1;
else
    disp('Positive compression');
    t=1;
end

if t==1
    comp_ratio=final_length/len_ip   %finding the compression ratio
end