function [wynik] = mnozenie(a, b)

[n_a, m_a] = size(a);
[n_b, m_b] = size(b);

if size(a) == 1
      for i=1:size(b,1)
        for j=1:size(b,2)
            wynik(i,j)=b(i,j)*a;
        end;
      end;
elseif size(b) == 1
      for i=1:size(a,1)
        for j=1:size(a,2)
            wynik(i,j)=a(i,j)*b;
        end;
      end;

elseif m_a~=n_b
    error('Blad. Macierze maja rozne rozmiary.')
else
    
    wynik=zeros(size(a,1),size(a,2));
    for i=1:size(a,1)
        for j=1:size(b,2)
            for k=1:size(a,2)
                %dwa razy na tym samym wyrazie dzia³amy
                wynik(i,j)=wynik(i,j)+a(i,k)*b(k,j);
            end
        end
    end
end