function menu

n = input(["Wybierz:"...
          "\n1) Dodawanie"...
          "\n2) Odejmowanie"...
          "\n3) Mnozenie"...
          "\n4) Potegowanie"...
          "\n5) Potegowanie tablicowe"...
          "\n6) Transpozycja"...
          "\n7) Transpozycja sprzezona\n"]);

switch n
    case 1
        disp('Dodawanie:')
        A = input('Podaj liczbe lub macierz: ');
        B = input('Podaj liczbe lub macierz: ');
        
        disp('Operator z m-pliku:')
        tic
        disp(dodawanie(A, B))
        t1 = toc;

        disp('Operator wbudowany:')
        tic
        disp(A+B)
        t2 = toc;
        porownaj_czasy(t1, t2)
    case 2
        disp('Odejmowanie:')
        A = input('Podaj liczbe lub macierz: ');
        B = input('Podaj liczbe lub macierz: ');
        
        disp('Operator z m-pliku:')
        tic
        disp(odejmowanie(A, B))
        t1 = toc;

        disp('Opertor wbudowany:')
        tic  
        disp(A-B)
        t2 = toc;
        porownaj_czasy(t1, t2)
    case 3
        disp('Mnozenie:')
        A = input('Podaj liczbe lub macierz: ');
        B = input('Podaj liczbe lub macierz: ');
        
        disp('Operator z m-pliku:')
        tic
        disp(mnozenie(A, B))
        t1 = toc;

        disp('Opertor wbudowany:')
        tic  
        disp(A*B)
        t2 = toc;
        porownaj_czasy(t1, t2)
    case 4
        disp('Potegowanie:')
        A = input('Podaj liczbe lub macierz: ');
        B = input('Podaj liczbe: ');
        
        disp('Operator z m-pliku:')
        tic
        disp(potegowanie(A, B))
        t1 = toc;

        disp('Opertor wbudowany:')
        tic  
        disp(A^B)
        t2 = toc;
        porownaj_czasy(t1, t2)
     case 5
        disp('Potegowanie tablicowe:')
        A = input('Podaj liczbe lub macierz: ');
        B = input('Podaj liczbe: ');
        
        disp('Operator z m-pliku:')
        tic
        disp(potegowanie_tab(A, B))
        t1 = toc;

        disp('Opertor wbudowany:')
        tic  
        disp(A.^B)
        t2 = toc;
        porownaj_czasy(t1, t2)
     case 6
        disp('Transpozycja')
        A = input('Podaj macierz: ');
        
        disp('Operator z m-pliku:')
        tic
        disp(transpozycja(A))
        t1 = toc;
    
        disp('Opertor wbudowany:')
        tic
        disp(A.')
        t2 = toc;
        porownaj_czasy(t1, t2)
     case 7
        disp('Transpozycja sprzezona')
        A = input('Podaj macierz: ');
        disp('Operator z m-pliku:')
        tic
        disp(transpozycja_sprzez(A))
        t1 = toc;
 
        disp('Opertor wbudowany:')
        tic
        disp(A')
        t2 = toc;
        porownaj_czasy(t1, t2)   
end