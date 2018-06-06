function [ M ] = m_gen( rho, A, L, n )
%generates the M matrix
%rho = the density of the rod
%A = the cross-sectional area of the rod
%L = the total length of the rod
%n = the number of subdivisions made in the rod

M = zeros(n+1., n+1.);
a = 1;

while a<=n
    M(a,a) = M(a,a) + 1./(2.*(n+1));
    M(a,a+1) = M(a,a+1) + 1./(2.*(n+1));
    M(a+1,a) = M(a+1,a) + 1./(2.*(n+1));
    M(a+1,a+1) = M(a+1,a+1) + 1./(2.*(n+1));    
    a = a+1;
end
M(1,1) = 1./(n+1.);
M(n+1,n+1) = 1./(n+1.);
M(1,n+1) = 0;
M(n+1,1) = 0;
M = M * rho*A*L/n;
end