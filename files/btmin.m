clear all;
close all;
clc;

%% Set up data
A = [5 -7 0 -2; 6 -8 0 -2; 0 0 -3 0; 9 -9 0 -4];
B = [2;1;1;3];
C = [1 2 3 4]; 

%% Compute Cholesky factors of Gramians
S = lyapchol(A,B);
R = lyapchol(A',C');

%% Determine 'rank' of the system
[U,Sigma,V] = svd(S*R');
display('Rank of Sigma')
r = rank(Sigma)

%% Compute projections for minimal system
Tl = Sigma(1:r,1:r)^-0.5*V(:,1:r)'*R;
Tr = S'*U(:,1:r)*Sigma(1:r,1:r)^-0.5;

%% Compute minimal ROM
Ar = Tl*A*Tr;
Br = Tl*B;
Cr = C*Tr;

%% Demonstrate minimality by showing identical transfer functions
H = [];
Hr = [];
w = logspace(-1,5,1000);
for i = 1 : 1000
    Hi = 20*log10(abs(C*((1i*w(i)*eye(4)-A)\B)));
    Hir = 20*log10(abs(Cr*((1i*w(i)*eye(r)-Ar)\Br)));
    H = [H Hi];
    Hr = [Hr Hir];
end
% semilogx(w,H,'k')
% hold on
semilogx(w,Hr,'r')
