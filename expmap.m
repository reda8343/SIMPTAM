function [ out ] = expmap(mu)
R1 = [0 0 0 0; 0 0 -1 0; 0 1 0 0; 0 0 0 0];
R2 = [0 0 1 0; 0 0 0 0; -1 0 0 0; 0 0 0 0];
R3 = [0 -1 0 0; 1 0 0 0; 0 0 0 0; 0 0 0 0];
R4 = [0 0 0 1; 0 0 0 0; 0 0 0 0; 0 0 0 0];
R5 = [0 0 0 0; 0 0 0 1; 0 0 0 0; 0 0 0 0];
R6 = [0 0 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0];

R = R1*mu(1) + R2*mu(2) + R3*mu(3) + R4*mu(4) + R5*mu(5) + R6*mu(6);

out = expm(R);
end
