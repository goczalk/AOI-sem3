function[wynik]= mnozenie_macierzy_wielomianow(A , B)

n = size(A, 1);
m = size(A, 2);

for i = 1 : n
    for k = 1 : m
        a = A{i, k};
        b = B{i, k};   
        wynik{i, k} = mnozenie_wielomianow(a, b);
    end
end