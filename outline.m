%Define Young's Modulus
%E = ;

%Define Dimensions
%L = ; length
%D = ; diameter
%rho = ; density
%V = pi*(d/2)^2*L; volume
%m = rho*v; mass

%Moment of Inertia
%I = (1/3)*m*L^2

%stiffness
k = 3*E*I/(L^3);

%number of divisions
%n = # divisions;

%create a (n+1)x(n+1) matrix for K
%fill the matrix using a for() loop based on pattern
%n=1 => [K]=[1,-1];[-1,1]
%n=2 => [K]=[1,-1,0];[-1,2,-1];[0,-1,1]
%n=3 => [K]=[1,-1,0,0];[-1,2,-1,0];[0,-1,2,-1];[0,0,-1,1]

%create a second (n+1)x(n+1) matrix fo M
%fill the matrix using a second for() loop based on pattern
%n=1 => [M]=[1/2,0];[0,1/2]
%n=2 => [M]=[1/3,1/6,0];[1/6,2/3,1/6];[0,1/6,1/3]
%n=3 => [M]=[1/4,1/8,0,0];[1/8,1/2,1/8,0];[0,1/8,1/2,1/8];[0,0,1/8,1/4]

%new matrix V = eig(K,M);
%return eigenvalues
%for() loop
%create vector w (frequencies) of size n
%w(n) = sqrt (V(n,n));
%return frequencies

