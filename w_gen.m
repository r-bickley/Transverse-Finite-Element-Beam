function [ W ] = w_gen( V, n )
%finds the list of natural frequencies from the V vector.
%V is the eigenvector solution to the K and M matrices
%n is the number of subdivisions made in the rod

W = zeros(n+1,1);
a = 1;
while a<=n
    W(a,1) = sqrt(V(a,1));
    a = a+1;
end
end
