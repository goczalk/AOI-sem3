function [wynik] = dodawanie(a, b)

if size(a) == 1
      for i=1:size(b,1)
        for j=1:size(b,2)
            wynik(i,j)=b(i,j)+a;
        end;
      end;
elseif size(b) == 1
      for i=1:size(a,1)
        for j=1:size(a,2)
            wynik(i,j)=a(i,j)+b;
        end;
      end;

elseif size(a)~=size(b)
    error('Blad. Macierze maja rozne rozmiary.')
else
    for i=1:size(a,1)
        for j=1:size(a,2)
            wynik(i,j)=a(i,j)+b(i,j);
        end;
    end;
end;