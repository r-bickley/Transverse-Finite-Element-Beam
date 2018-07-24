%Test Script
%This script will use the k_gen, m_gen, v_gen, and w_gen functions
%to determine the properties of an example system.

%Young's modulus, here using a common value in GPa for steel
E = 200;

%Length of the beam in meters
L = 5;

%Density, here using a common value in kg/m^3 for steel
rho = 8050;

%Cross-sectional area of the beam in square meters
A = 0.1;

%Desired number of subdivisions in the beam
n = 4;

%Calculate the mass of the beam using given quantities
m = A*L*rho;

%Generate the stiffness matrix
K = k_gen(E,L,m,n);

%Generate the mass matrix
M = m_gen(rho,A,L,n);

%Find the eigenvalues
V = v_gen(K,M);

%Find the natural frequencies
W = w_gen(V,n);

disp("The stiffness matrix is:")
disp(K)
disp("The mass matrix is:")
disp(M)
disp("The eigenvalues are:")
disp(V)
disp("The natural frequencies are:")
disp(W)