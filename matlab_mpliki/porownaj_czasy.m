function porownaj_czasy(t1, t2) %t1-mplik, t2-wbudowany

if(t1 < t2)
    disp(['Operator wbudowanej jest wolniejszy: ', num2str(t1), ' < ', num2str(t2)])
elseif(t1 > t2)
    disp(['Operator z m-pliku jest wolniejszy: ', num2str(t1), ' > ', num2str(t2)])
else
    disp(['Operatory s¹ tak samo szybkie: ', num2str(t1), ' = ', num2str(t2)])
end