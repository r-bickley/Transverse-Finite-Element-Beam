function [ K ] = k_gen( E, L, r, n )
%generates the k matrix
%E = young's modulus for the material
%L = the total length of the rod
%r = the cross-sectional radius of the rod
%n = the number of subdivisions made in the rod

K = zeros(n+1., n+1.);
a = 1.;
while a<=n
    K(a,a) = K(a,a) +1.;
    K(a,a+1.) = K(a,a+1.) -1.;
    K(a+1.,a) = K(a+1.,a) -1.;
    K(a+1.,a+1.) = K(a+1.,a+1.) +1.;
    a = a+1.;
end

K = K * 3.0*3.14159*E*(r^4.)/(4.0*L^3.);
end
