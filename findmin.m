n = 3;
C = rand(n,n);
A = C'*C;
b = rand(n,1);
X = rand(n,1);
e = 0.00001;
i=0;
L = 1 / (max(eig(A))+1);
while max(abs(2 * A * X + b)) > e
    X_n = X - (2 * A * X + b) * L;
    X = X_n;
    i=i+1;
endwhile;
2*A*X+b
i