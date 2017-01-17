function [wynik] = potegowanie(a, n)
    [n_a, m_a] = size(a);
    [n_n, m_n] = size(n);

    if(n_n > 1 || m_n > 1)
        error('Blad! Nie mozna potegowac bo n jest macierza.')
    end;

    if (n_a ~= m_a)
        error('Blad! Macierz nie jest kwadratowa.')
    end;
    
    if n == 0
        %zwraca macierz jednostkowa
        wynik = eye(size(a));
        return
    end
    
    if n == 1
        wynik = a;
        return
    end

    wynik = mnozenie(a, a);
    for pot = 3 : n
        wynik = mnozenie(wynik, a);
    end
