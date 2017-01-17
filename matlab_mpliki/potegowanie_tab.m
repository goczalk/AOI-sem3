function [wynik] = potegowanie_tab(a, n)

if n == 0
    %zwraca macierz jednostkowa
    wynik = ones(size(a));
    return
end

if n == 1
    wynik = a;
    return
end

for i = 1 : size(a, 1)
    for j = 1 : size(a, 2)
        wynik(i, j) = a(i, j) ^ n;
    end
end