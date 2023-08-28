gcd(U,0,U):-!.
gcd(U,V,W) :- not(v=0), R is U mod V, gcd(V,R,W).


% LCM(A, B) = (a * b) / GCD(A, B)
%lcd(U,0,U):-!.
lcm(U,V,W) :- 
	gcd(U,V,R),
    W is (U * V) / R.
