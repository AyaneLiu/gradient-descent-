function [Phi, Psi]=CCAals(X,Y,phi,psi,k)  %Gradient Descent
[n,p1]=size(X); %X???
[n,p2]=size(Y); %Y???
eta1=0.01;    %Choose stepsize
eta2=0.01;
for i = 1:k
    phi=phi-eta1*X'*(X*phi-Y*psi)/n;           % least squaer solution
    phi=phi/(phi'*S_x*phi);       % normalization
    psi=psi-eta2*Y'*(Y*psi-X*phi)/n;
    psi=psi/(psi'*S_y*psi);
end
Phi=phi;
Psi=psi;