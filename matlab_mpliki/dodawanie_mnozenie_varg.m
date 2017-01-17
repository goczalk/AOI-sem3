function [varargout] = dodawanie_mnozenie_varg(varargin)

op = char(varargin(1));
n = nargin;

if op == '+'
    if (n == 3 || n > 3) %dla dwoch zawsze, pozniej nastepne
        [n1, m1]=size(cell2mat(varargin(2)));
        [n2, m2]=size(cell2mat(varargin(3)));
        if (((n1==n2)||(n1==1 && n2==1)) && ((m1==m2) || (m1==1 && m2==1))) %uwzglednia tez liczby
            A1 = cell2mat(varargin(2)) + cell2mat(varargin(3));
            varargout{1} = A1;
        else
            error('Blad. Macierze maja rozne rozmiary.')
        end;
        
        if (n > 3)
            for i=4:n
                [n1, m1]=size(A1);
                [n2, m2]=size(cell2mat(varargin(i)));
                if (((n1==n2)||(n1==1 && n2==1)) && ((m1==m2) || (m1==1 && m2==1)))
                    A2 = A1 + cell2mat(varargin(i));
                    varargout{i-2} = A2;
                    A1 = A2;
                else
                    error('Blad. Macierze maja rozne rozmiary.')
                end;
            end;
        end;
    else
        error('Blad. Za malo parametrow do dzialania.')
    end;
    
    
elseif op == '*'
    if (n == 3 || n > 3)
        [n1, m1]=size(cell2mat(varargin(2)));
        [n2, m2]=size(cell2mat(varargin(3)));

        if (n2 == m1) %uwzglednia liczby
            A1 = cell2mat(varargin(2)) * cell2mat(varargin(3));
            varargout{1} = A1;
        else
            error('Blad. Macierze maja rozne rozmiary.')
        end;
        if (n > 3)
            for i=4:n
                [n1, m1]=size(A1);
                [n2, m2]=size(cell2mat(varargin(i)));
                if (n2 == m1)
                    A2 = A1 * cell2mat(varargin(i));
                    varargout{i-2} = A2;
                    A1 = A2;
                else
                    error('Blad. Macierze maja rozne rozmiary.')
                end;
            end;
        end;
    else
        error('Blad. Za malo parametrow do dzialania.')
    end;
else
    error('Bledny operator. Wybierz + lub * . ')
end;