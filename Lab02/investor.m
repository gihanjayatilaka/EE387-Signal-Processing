% EXERCISE (3) (A,i) CODE
function [ B ] = investor(P)
    %P[n], the net savings per month is the input sequence.
    %B[n], the bank balance at the end of every month is the output sequence.

    B=zeros(1,length(P));
    B(1)=P(1);%since the bank balance at the end of the first month is only the net savings.
    for m=2:length(P)
        B(m)=1.01*B(m-1)+P(m);%the new bank balance is the previous bank balance, interest for it and the net savings of the month.
    end

end

