clear all;
close all;
clc;
load beam

%% Compute transfer function for original model
freq = logspace(-2,4,1000);
H = [];
for i = 1 : 1000
    g = C*((1i*freq(i)*speye(size(A))-A)\B);
    H = [H 20*log10(abs(g))];
end
semilogx(freq,H,'k')
hold on


%% Compute low rank factors of Gramians via matrix sign
[Y,~] = lyap_sgn_fac(A',B');
Y = Y';
[Z,~] = lyap_sgn_fac(A,C);
Z = Z';

%% Compute SVD of product of Gramian factors
[U,Sigma,V] = svd(Y'*Z,0);

%% Compute ROM and transfer function for dimension r = 10
r = 10;
Tl = Sigma(1:r,1:r)^-0.5*V(:,1:r)'*Z';
Tr = Y*U(:,1:r)*Sigma(1:r,1:r)^-0.5;
Ar = Tl*A*Tr;
Br = Tl*B;
Cr = C*Tr;
Hr = [];
for i = 1 : 1000
    gr = Cr*((1i*freq(i)*speye(size(Ar))-Ar)\Br);
    Hr = [Hr 20*log10(abs(gr))];
end
semilogx(freq,Hr,'r')

%% Compute ROM and transfer function for dimension r = 50
r = 50;
Tl = Sigma(1:r,1:r)^-0.5*V(:,1:r)'*Z';
Tr = Y*U(:,1:r)*Sigma(1:r,1:r)^-0.5;
Ar = Tl*A*Tr;
Br = Tl*B;
Cr = C*Tr;
Hr = [];
for i = 1 : 1000
    gr = Cr*((1i*freq(i)*speye(size(Ar))-Ar)\Br);
    Hr = [Hr 20*log10(abs(gr))];
end
semilogx(freq,Hr,'b')
 
%% Compute ROM and transfer function for dimension r = 100
r = 100;
Tl = Sigma(1:r,1:r)^-0.5*V(:,1:r)'*Z';
Tr = Y*U(:,1:r)*Sigma(1:r,1:r)^-0.5;
Ar = Tl*A*Tr;
Br = Tl*B;
Cr = C*Tr;
Hr = [];
for i = 1 : 1000
    gr = Cr*((1i*freq(i)*speye(size(Ar))-Ar)\Br);
    Hr = [Hr 20*log10(abs(gr))];
end
semilogx(freq,Hr,'g')

legend('Original model, n = 348','Reduced model, r = 10','Reduced model, r = 50','Reduced model, r = 100')
