v = [1; 2];
u = [1, 2, 3, 4];
A = [1, 2; 3, 4];
B = [1, 2, 3 ; 4, 5, 6];

%Operaciones%

pi*v 
v'*v
sqrt(v'*v)
v*u
v.*u(2:3)
A*v
A^2
A.*A
A*B
A.*B(1:2,2:3)

x = 4
y = 3
z = 5

%calculos para comparar%
result = x/y + z
resultcomp = x/(y+z)

result = x/y*z
result = x/(y*z)