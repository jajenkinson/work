% call: equity_accrued.m
% John Jenkinson, UTSA ECE, August 2014
% Michael Jenkinson, Wells Fargo
%
% This function returns the equity accrued 
% n - number of months
% C - original cost of real estate
% M - monthly payment
% i_rate - interest rate
% test values: C0=320000; M=2129; i_rate=0.00583; n=12;
function[E] = equity_accrued(n,C0,M,i_rate)

% initilize Cost, Interest, Principal, and Equity vectors.
C=zeros(1,n); I=C; P=C; E=C;

for k=1:n
    
    if(k==1) C(k)=C0;
        I(k)=i_rate*C(k);
        P(k)=M-I(k);
        E(k)=P(k);
    
    elseif(k>1) C(k)=C(k-1)-M*(k-1);
        I(k)=i_rate*C(k);
        P(k)=M-I(k);
        E(k)=P(k);
    end   
end
