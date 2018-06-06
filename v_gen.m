function [ V ] = v_gen( K, M )
%solves the eigenvalue problem of K and M
%K is the stiffness matrix
%M is the mass matrix

V = eig(K,M);
end