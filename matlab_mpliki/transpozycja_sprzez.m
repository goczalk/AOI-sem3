function [wynik] = transpozycja_sprzez(a)
%wynik=zeros(size(a,1),size(a,2));
for i=1:size(a,1)
    for j=1:size(a,2)
        %conj zwraca liczbe sprzezona
        wynik(i,j)=conj(a(j,i));
    end
end