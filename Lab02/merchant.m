% EXERCISE (3) (A,ii) CODE
function [ S ] = merchant( M )
    %M[n], monthly earnings is the input sequence.
    %S[n], the savings at the end of every month is the output sequence.
    S=zeros(1,length(M));
    S(1)=0.5*M(1);%since the balance brought forward is 0 and half the first moth’s earnings is saved.
    for m=2:length(M)
        S(m)=S(m-1)+0.5*M(m);%since half of every months’ earnings is added to the savings.
    end

end

