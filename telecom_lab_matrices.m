
%---------------------- EXERCISE 1 ------------------------------%
% Generate 100 samples of Gaussian noise and store them in a 10x10 matrix.
% Then, reshape the matrix into a 1D vector and plot it using:
% x-label: "sample", y-label: "Noise", title: "AWGN"

% Step 1: Create a 10x10 matrix with normally distributed (Gaussian) noise
noiseMatrix = randn(10, 10);  % Each value ~ N(0,1)

% Step 2: Convert the matrix into a 1D column vector (100x1)
noiseVector = noiseMatrix(:);
% This operation stacks all matrix elements column-wise into a single vector.

%  Important:
% Do not use noiseMatrix(100,1) — it will cause an error.
% The matrix has only 10 rows and 10 columns.

% Step 3: Plot the noise vector
plot(noiseVector);

% Step 4: Add axis labels and title
xlabel('sample');
ylabel('Noise');
title('AWGN');






%---------------------- EXERCISE 2 ------------------------------%

% This code covers both parts of the exercise:
%
% 1. Visualization of one period of a 900 MHz carrier signal.
% 2. Visualization of the same signal with added AWGN (Additive White Gaussian Noise).


% -------------------- Parameters -------------------- %
fc = 900e6;            % Carrier frequency: 900 MHz
T = 1 / fc;            % Period of the carrier signal
fs = 10 * fc;          % Sampling frequency (10x carrier for resolution)
t = 0 : 1/fs : T;      % Time vector for one period

% -------------------- Carrier Signal -------------------- %
carrier = cos(2 * pi * fc * t);

% -------------------- AWGN Noise -------------------- %
noise =  randn(size(t));   % Gaussian noise (mean=0, std=0.2)

% Signal + noise
noisy_signal = carrier + noise;

% -------------------- Plotting -------------------- %
figure;

subplot(2,1,1);
plot(t * 1e9, carrier);
xlabel('Time (ns)');
ylabel('Amplitude');
title('Carrier Signal at 900 MHz (One Period)');
grid on;

subplot(2,1,2);
plot(t * 1e9, noisy_signal);
xlabel('Time (ns)');
ylabel('Amplitude');
title('Carrier Signal with AWGN');
grid on;


%---------------------- EXERCISE 3 ------------------------------%
#A baseband signal with frequency 1 kHz is sampled at 10 times its frequency, i.e., at 10 kHz.
# Create the time array from 0 to 100 milliseconds.

% Signal parameters
f = 1e3;           % Signal frequency: 1 kHz (baseband)
fs = 10 * f;       % Sampling frequency: 10 kHz (10 times the signal frequency)
T = 0.1;           % Duration: 100 ms = 0.1 seconds

Ts = 1 / fs;       % Sampling period
t = 0 : Ts : T;    % Time vector from 0 to 0.1 s with step size Ts

% Display the number of samples
disp(['Length of time vector: ', num2str(length(t))]);

% Generate and plot the baseband signal
plot(t, cos(2 * pi * f * t));
xlabel('Time (s)');
ylabel('Amplitude');
title('1 kHz Baseband Signal Sampled at 10 kHz');
grid on;

