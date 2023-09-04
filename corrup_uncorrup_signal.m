clear all
clc
close all
% Number of samples
N = input("Enter the value of N : ");

% uncorrupted signal s(n)
n = 0:N-1;
s = 2 * (0.9 .^ n) .* n;

% random noise d(n)
d = randn(1, N);

% Noise corrupted signal
corrupted_sig = s + d;

% X Avarage 
x_avg = zeros(1, N);
k = input("Enter the value of K : "); 
for i = 1:k
    noise = randn(1, N);
    x_avg = x_avg + (s + noise);
end
x_avg = x_avg / k;

% Plotting
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
plot(n, corrupted_sig);
title('Corrupted Signal');
xlabel('n');
ylabel('X(n)');

subplot(4,1,4);
plot(n, x_avg);
title('X_avg');
xlabel('n');
ylabel('X_avg');

