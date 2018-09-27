function [w_soln] = elemental_equations(E,I,L,rho)
%Accepts the young's modulus, moment of inertia, and length
%Elemental Stiffness Matrix:
K = [12 6*L -12 6*L;6*L 4*L^2 -6*L 2*L^2;-12 -6*L 12 -6*L;6*L 2*L^2 -6*L 4*L^2];
K = K*E*I./(L^3);
K_soln = K(3:end,3:end);

%Elemental Mass Matrix:
M = [156 22*L 54 -13*L;22*L 4*L^2 13*L -3*L^2;54 13*L 156 -22*L; -13*L -3*L^2 -22*L 4*L^2];
M = M*rho*L/420;
M_soln = M(3:end,3:end);

%Find the eigenvalues
V=eig(K_soln,M_soln);

%Find the natural frequencies
w_soln = sqrt(V);
end
