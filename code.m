function [] = myFir()
N = 4; %The order of the filter
n = 0:N;
hd = sin((pi/4)*(n - 2)) ./ (pi*(n-2));hd(n==N/2)=0.25;
w = hamming(5)';

h = hd .* w;
b = fir1(N,0.25);

figure(1);
impz(b);hold on;impz(h);legend('fir1','Theoretical');grid;

figure(2);
freqz(b); %The magnitude/phase response

figure(3);
zplane(b); % The pole-zero diagram
end

