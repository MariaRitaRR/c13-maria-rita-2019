clc;
clear all;
close all;

%% Questão 1
t = 0:0.1:10;
y = 2*sin(3*t);
z = 2*cos(3*t);

figure
plot(t,y, 'b', t, z, 'r', 'LineWidth',1.5)
grid on
xlabel('Tempo (s)')
ylabel('Amplitude')
title('Senoide e Cossenoide')
legend('Seno','Cosseno', 'Location','best')

disp('Quantidade de elementos no vetor tempo:')
disp(length(t))

%% Questão 2
a = input('Digite o valor do coeficiente a: ');
x = -10:0.1:10;
y = a*x + 2;

if a > 0
    disp('O coeficiente digitado é positivo')
elseif a < 0
    disp('O coeficiente digitado é negativo')
else
    disp('O coeficiente digitado é zero')
end
xregion =  -2:0.1:2;
yregion = a*xregion + 2;

figure
plot(x, y, 'b', 'LineWidth', 1.5)
hold on
plot(xregion, yregion, 'r','LineWidth',3)
grid on
xlabel('x')
ylabel('y')
title('Gráfico da Função Linear y = a*x + 2')

axes('Position',[0.2 0.6 0.25 0.25])
box on
plot(xregion,yregion,'LineWidth',2)
grid on
xlim([-2 2])
ymin = min(yregion);
ymax = max(yregion);
if ymin==ymax
    ymin = ymin - 1;
    ymax = ymax + 1;
end
ylim([ymin ymax])
title('Zoom')

%% QUESTAO 3 

mult3 = zeros(1,5);

for i = 1:5
    mult3(i) = 3*i;
end

dobro = 2*mult3;

figure;

subplot(2,1,1);

plot(mult3, 'o-', 'LineWidth', 1.5);

grid on;
xlabel('Indice');
ylabel('Valor');
title('Cinco primeiros multiplos de 3');


subplot(2,1,2);

plot(dobro, 'o-', 'LineWidth', 1.5);

grid on;
xlabel('Indice');
ylabel('Valor');
title('Dobro dos multiplos de 3');


%% QUESTAO 4 
t = 0.1:0.1:1000;

y = 50000*exp(-0.05*t);

figure;

subplot(2,1,1);

plot(t, y);

grid on;
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Escala normal');


subplot(2,1,2);

semilogy(t, y);

grid on;
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Escala logaritmica no eixo Y');


%% QUESTAO 5 

[x, y] = meshgrid(1:0.5:10, 1:20);

z = sin(x) + cos(y);

figure;

surf(x, y, z);

colormap('autumn');
shading interp;

xlabel('x');
ylabel('y');
zlabel('z');
title('Superficie z = sen(x) + cos(y)');


figure;

contour(x, y, z, 10);

xlabel('x');
ylabel('y');
title('Curvas de nivel');