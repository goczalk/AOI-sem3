function [wynik] = transpozycja(a)
%wynik=zeros(size(a,1),size(a,2));
%dla liczby
for i=1:size(a,1)
    for j=1:size(a,2)
        wynik(i,j)=a(j,i);
    end
end