function [] = elemental_equations(E,I,L,rho)
%Accepts the young's modulus, moment of inertia, and length
%Elemental Stiffness Matrix:
K = [12 6*L -12 6*L;6*L 4*L^2 -6*L 2*L^2;-12 -6*L 12 -6*L;6*L 2*L^2 -6*L 4*L^2];
K = K*E*I./(L^3);

%Elemental Mass Matrix:
M = [156 22*L 54 -13*L;22*L 4*L^2 13*L -3*L^2;54 13*L 156 -22*L; -13*L -3*L^2 -22*L 4*L^2];
M = M*rho*L/420;

%Find the eigenvalues
V = v_gen(K,M);

%Find the natural frequencies
W = w_gen(V,4);

disp("The elemental stiffness matrix is:")
disp(K)
disp("The elemental mass matrix is:")
disp(M)
disp("The corresponding eigenvalues are:")
disp(V)
disp("The natural frequencies are:")
disp(W)
end
