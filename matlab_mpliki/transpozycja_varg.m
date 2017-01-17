function [varargout] = transpozycja_varg(varargin)

n = nargin;

for i=1:n
   if((imag(cell2mat(varargin(i)))) ~= 0) 
        k = input(["Podales macierz liczb zespolonych. Ktora transpozycje chcesz wykonac?:"...
                    "\n1) Transpozycja niesprzezona"...
                    "\n2) Transpozycja sprzezona\n"]);
        if(k == 1)
            varargout{i} = (cell2mat(varargin(i))).';
        else
            varargout{i} = (cell2mat(varargin(i)))';
        end;
    else
        varargout{i} = (cell2mat(varargin(i)))';
    end;
end;