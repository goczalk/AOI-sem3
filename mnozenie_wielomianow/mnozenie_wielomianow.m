function[wynik]= mnozenie_wielomianow(a , b)

m = size(a, 2);
n = size(b, 2);

for k = 1: (m+n-1)
    c = 0; %zaczynamy od nowa
    for j = max(1, k+1-n):min(k, m)
        c = c + a(j) * b(k + 1 -j);
    end
    wynik(1, k) = c;
end