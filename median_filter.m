clear all
clc
close all
% Number of samples
N = input("Enter the value of N : ");

% Original uncorrupted signal s(n)
n = 0:N-1;
s = 2 * (0.9 .^ n) .* n;

% Generating random noise d(n)
rand = randi([0,N],1,1);
imp_noise = 10.*(n==rand);
% Noise corrupted signal
corrupted_sig = s + imp_noise;

% filtering
M = input("Enter the median filter length : ");
y = medfilt1(corrupted_sig, M);

figure
subplot(3,1,1);
plot(n,s,"r");
title("uncorrupted signal");
xlabel("n");
ylabel("s(n)");

subplot(3,1,2);
plot(n,corrupted_sig,"g");
title("Noise corrupted signal");
xlabel("n");
ylabel("X(n)");

subplot(3,1,3);
plot(n,y,"b");
title("Median filtered signal");
xlabel("n");
ylabel("y(n)");

figure
plot(n,imp_noise,"r");