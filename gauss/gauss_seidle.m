function gauss_seidle(nodes_num, eps, Vtop, Vbot, Vleft, Vright)
%nodes_num, eps - inaccurany, Vtop-right - border values

n = sqrt(nodes_num);
%zbuduj macierz z wartosciami szukanych potencjalow, zal. 100V
% (n+2) zeby mozna bylo dodac warunki brzegowe
V = ones(n+2) * 100 ; 
%obuduj macierz brzegowymi warunkami
V(:, 1) = Vleft ;
V(:, end) = Vright;
%pozniej zeby nadpisalo z bocznych brzegow
V(1,:) = Vtop ;
V(end, :) = Vbot;

%dopisanie inicjalizujace
V_old = V;

%zalatwia warunek dla calych macierzy
%abs(V_old(m, n) - V(m, n))


%obejscie bo nie ma do-while
for i = 2 : n+1
    for j = 2 : n+1
    V(i,j) = ( V(i, j-1) + V(i-1, j) + V_old(i+1, j) + V_old(i, j+1) )/4;
    end %for
end %for

%chcesz tylko warunek dla wewnetrznej czesci macierzy
while (abs(V_old(2:end-1, 2:end-1) - V(2:end-1, 2:end-1))>= eps)
    temp = V;
    for i = 2 : n+1
        for j = 2 : n+1

        %bo dla pierwszego elementu musimy cos zmienic
        if j == 2 && i == 2
          V_old = V;
        end %if

        V(i,j) = ( V(i, j-1) + V(i-1, j) + V_old(i+1, j) + V_old(i, j+1) )/4;
        end %for
    end %for
    V_old = temp;
end %while

disp(V(2:n+1, 2:n+1));
z = contourf(flip(V));
clabel(z);