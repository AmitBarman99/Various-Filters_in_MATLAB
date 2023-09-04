clear all
clc
close all
% Number of samples
N = input("Enter the value of N : ");

% Original uncorrupted signal s(n)
n = 0:N-1;
s = 2 * (0.9 .^ n) .* n;

% Generating random noise d(n)
d = 0.5*randn(1, N);

% Noise corrupted signal
corrupted_sig = s + d;

% filtering 
x_avg = zeros(1, N);
k = input("Enter the numbers of moving average measurements : "); 
b = ones(1,k).*(1/k);
y = filter(b,1,corrupted_sig);

figure;
subplot(4,1,1);
plot(n, s);
title('s(n)');
xlabel('n');
ylabel('s(n)');

subplot(4,1,2);
plot(n, d);
title('d(n)');
xlabel('n');
ylabel('d(n)');

subplot(4,1,3);
plot(n,corrupted_sig);
title('Corrupted signal');
xlabel('n');
ylabel('X(n)');

subplot(4,1,4);
plot(n, y);
title('Filter signal');
xlabel('n');
ylabel('y(n)');
