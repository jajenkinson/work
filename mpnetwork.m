% call: mpnetwork.m
% John Jenkinson, UTSA ECE 2014
% Azima Mottaghi, ITSA 2014
%
% Modeling a McCulloch-Pitts network
% with 100 neurons arranged linearly
% in space with connections only
% running from right to left.
%
close all; clear all; clc
i=100; % number of neurons
s=i; % number of states
w=zeros(i);
for k=2:i
    w(k,k-1)=1; % weight matrix j->i
end
u=zeros(i); % activation matrix
u(1,1)=1;
Vth=0; % offset voltage
for k=2:i
    for n=1:s-1
        if(w(k,:)*u(:,n)-Vth>0)
            u(k,n+1)=1;
        end
    end
end

% modeling weight matrix corrupted 
% by noise
un=zeros(i); % noisy activity matrix
un(1,1)=1;
for b=2:i
    if(rand(1)>0.85)
        un(b,1)=1;
    end
    for y=1:s-1
        if(w(b,:)*un(:,y)-Vth>0)
            un(b,y+1)=1;
        end
    end
end

