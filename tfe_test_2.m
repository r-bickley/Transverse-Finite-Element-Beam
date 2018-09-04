% Compare wn's for rod
% finite element model and continuous model
% Two elements
A=0.1; E=70e9; L=1; rho=2700; K=A*E/(L/2)*[1 -1 0;-1 2 -1;0 -1 1]; M=rho*(L/2)*A*[1/3 1/6 0;1/6 2/3 1/6;0 1/6 1/3];
disp('2'); sqrt(-eig(inv(M)*K))
[0; 1*pi*sqrt(E/(rho*L^2)); 2*pi*sqrt(E/(rho*L^2))]
% Three elements
A=0.1; E=70e9; L=1; rho=2700; K=A*E/(L/3)*[1 -1 0 0;-1 2 -1 0;0 -1 2 -1;0 0 -1 1]; M=rho*(L/3)*A*[1/3 1/6 0 0;1/6 2/3 1/6 0;0 1/6 2/3 1/6;0 0 1/6 1/3];
disp('3'); sqrt(-eig(inv(M)*K))
[0; 1*pi*sqrt(E/(rho*L^2)); 2*pi*sqrt(E/(rho*L^2)); 3*pi*sqrt(E/(rho*L^2))]
% Four elements
A=0.1; E=70e9; L=1; rho=2700; K=A*E/(L/4)*[1 -1 0 0 0;-1 2 -1 0 0;0 -1 2 -1 0;0 0 -1 2 -1;0 0 0 -1 1]; M=rho*(L/4)*A*[1/3 1/6 0 0 0;1/6 2/3 1/6 0 0;0 1/6 2/3 1/6 0;0 0 1/6 2/3 1/6;0 0 0 1/6 1/3];
disp('4'); sort(sqrt(-eig(inv(M)*K)))
[0; 1*pi*sqrt(E/(rho*L^2)); 2*pi*sqrt(E/(rho*L^2)); 3*pi*sqrt(E/(rho*L^2)); 4*pi*sqrt(E/(rho*L^2))]
% Five elements
A=0.1; E=70e9; L=1; rho=2700; K=A*E/(L/5)*[1 -1 0 0 0 0;-1 2 -1 0 0 0;0 -1 2 -1 0 0;0 0 -1 2 -1 0;0 0 0 -1 2 -1;0 0 0 0 -1 1]; M=rho*(L/5)*A*[1/3 1/6 0 0 0 0;1/6 2/3 1/6 0 0 0;0 1/6 2/3 1/6 0 0;0 0 1/6 2/3 1/6 0;0 0 0 1/6 2/3 1/6;0 0 0 0 1/6 1/3];
disp('5'); sort(sqrt(-eig(inv(M)*K)))
[0; 1*pi*sqrt(E/(rho*L^2)); 2*pi*sqrt(E/(rho*L^2)); 3*pi*sqrt(E/(rho*L^2)); 4*pi*sqrt(E/(rho*L^2)); 5*pi*sqrt(E/(rho*L^2))]
% Six elements
A=0.1; E=70e9; L=1; rho=2700; K=A*E/(L/6)*[1 -1 0 0 0 0 0;-1 2 -1 0 0 0 0;0 -1 2 -1 0 0 0;0 0 -1 2 -1 0 0;0 0 0 -1 2 -1 0;0 0 0 0 -1 2 -1; 0 0 0 0 0 -1 1]; M=rho*(L/6)*A*[1/3 1/6 0 0 0 0 0;1/6 2/3 1/6 0 0 0 0;0 1/6 2/3 1/6 0 0 0;0 0 1/6 2/3 1/6 0 0;0 0 0 1/6 2/3 1/6 0;0 0 0 0 1/6 2/3 1/6;0 0 0 0 0 1/6 1/3];
disp('6'); sort(sqrt(-eig(inv(M)*K)))
[0; 1*pi*sqrt(E/(rho*L^2)); 2*pi*sqrt(E/(rho*L^2)); 3*pi*sqrt(E/(rho*L^2)); 4*pi*sqrt(E/(rho*L^2)); 5*pi*sqrt(E/(rho*L^2))]
figure(1);
plot(2:6,[1.5996e4 1.5996e4 1.5996e4 1.5996e4 1.5996e4],2:6,[1.76e4 1.673e4 1.641e4 1.626e4 1.612e4],'x-'); xlabel('Number of elements');
ylabel('First natural frequency [rad/s]');