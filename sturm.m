%[q, r] = deconv(c, a) r -remainder, c - ???????, ? - ????????


%k = polyder(p) returns the derivative of the polynomial p.
%[q,d] = polyder(b,a) returns the numerator q and denominator d of the derivative of the polynomial quotient b/a.

%r = roots(p) returns the roots of the polynomial represented by p as a column vector.
% http://lseti.ru/matsoft11/uhebn2-2.htm

function retval = sturm(f0)

limit_left = -100;
limit_right = 100;
%f0 = [1 0 -5 -2 2];
polynoms = cell(length(f0),1);
polynoms{1} = f0;
polynoms{2} = polyder(f0);
polynom = polynoms{2};
i = 3;
 while length(polynom) > 1,
     [q polynom] = deconv(polynoms{i-2},polynoms{i-1});
     polynom = -polynom(find(polynom,1,'first'):find(polynom,1,'last')) ;% remove zeros
     polynoms{i} = polynom;
     i = i + 1;
 end    

signs_left = zeros(length(polynoms),1);
signs_right = zeros(length(polynoms),1);

for i = 1:length(polynoms)
    signs_left(i) = sign(polyval(polynoms{i},limit_left));
    signs_right(i) = sign(polyval(polynoms{i},limit_right));    
end

%signs_left;
%signs_right;

retval = count_sign_change(signs_left)-count_sign_change(signs_right);


endfunction
