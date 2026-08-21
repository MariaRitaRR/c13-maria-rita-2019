clc;
clear all;
close all;

%% QUESTAO 1

M = 2;
B = 3;
K = 8;

num = 1;
den = [M B K];

G1 = tf(num, den)

figure;

step(G1, 15);

grid on;
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Resposta ao degrau - Massa-mola-amortecedor');


%% QUESTAO 2

R = 1000;
tau = 2;

C = tau/R;

disp('Valor da capacitancia C (F):');
disp(C);

num = 1;
den = [R*C 1];

G1 = tf(num, den);

figure;

step(G1, 10);

grid on;
xlabel('Tempo (s)');
ylabel('Tensao de saida (V)');
title('Resposta ao degrau - Circuito RC');


%% QUESTAO 3

M = 4;
F = 1;
v_ss = 0.5;

B = F/v_ss;

disp('Valor do coeficiente de atrito B:');
disp(B);

num = 1;
den = [M B];

G1 = tf(num, den)

figure;

step(F*G1, 20);

grid on;
xlabel('Tempo (s)');
ylabel('Velocidade (m/s)');
title('Resposta do sistema massa-atrito');