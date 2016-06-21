function H=dht(x)
% z='C:\Users\Emtiaj\Documents\MATLAB\Sound\speech.wav';
% [x,fs]=wavread(z);
X = fft(x);
H = real(X) - imag(X);
