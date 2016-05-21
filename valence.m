K0 = 100;

for alpha1 = -1:0.3:2
for alpha2 = -1:0.3:2
for alpha3 = -1:0.3:2
for alpha4 = -1:0.3:2
a0 = 5/24*alpha3*alpha2*alpha1;
a1 = 4*alpha2*alpha1-K0/6*alpha4*alpha3*alpha2*alpha1;
a2 = 3/2*alpha1 - K0/2*alpha3*alpha2*alpha1;
a3 = 2 - K0*alpha2*alpha1;
a4 = 1 - K0*alpha1;
%[a0 a1 a2 a3 a4]
ROOTS = roots([a0 a1 a2 a3 a4]);
REAL_ROOTS = ROOTS(imag(ROOTS)==0);
number_of_roots = length(REAL_ROOTS);
%number_of_roots = sturm([a0 a1 a2 a3 a4])
if ((number_of_roots == 4) && (sum(ROOTS>0)>1))
%alpha1
%alpha2
%alpha3
%alpha4
ROOTS
sum(ROOTS>0)
endif

endfor
endfor
endfor
endfor
