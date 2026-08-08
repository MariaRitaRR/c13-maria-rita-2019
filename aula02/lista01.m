%% 1. Operações básicas
a = 12;
b = 5;
soma = a + b        % 17
subtracao = a - b   % 7
multiplicacao = a * b   % 60
divisao = a / b     % 2.4
potencia = a ^ b    % 248832

%% 2. Raiz, arredondamento e resto
sqrt(144)   % 12
round(7.6)  % 8
ceil(4.01)  % 5
mod(250,17) % 12

%% 3. MDC e MMC
gcd(24,36)  % 12
lcm(12,18)  % 36

%% 4. Exponencial e trigonometria
exp(2)              % 7.3891
sin(deg2rad(30))    % 0.5
cos(deg2rad(60))    % 0.5
tan(deg2rad(45))    % 1
% alternativa: sind(30), cosd(60), tand(45)

%% 5. Criando vetores
v1 = 1:10
v2 = 10:-1:1
v3 = 0:2:20
v4 = linspace(0,100,5)

%% 6. Acessando posições de um vetor
v = [4 8 15 16 23 42];
v(1)        % primeiro
v(end)      % último
v(2:4)      % posições 2 a 4
v([1 3 6])  % posições 1, 3 e 6

%% 7. Informações sobre um vetor
v = [5 10 15 20 25];
numel(v)    % 5
size(v)     % 1 5
sum(v)      % 75
mean(v)     % 15
max(v)      % 25
min(v)      % 5

%% 8. Vetor linha e vetor coluna
v = [10 20 30 40];
size(v)     % 1 4
vc = v'
size(vc)    % 4 1

%% 9. Criando e acessando uma matriz
A = [3 6 9; 2 4 8; 1 5 7];
A(2,3)      % 8
A(1,:)      % primeira linha
A(:,2)      % segunda coluna
size(A)     % 3 3

%% 10. Operações com matrizes
A = [1 2; 3 4];
B = [2 0; 1 5];
A + B       % [3 2; 4 9]
A * B       % [4 10; 10 20]
A'          % [1 3; 2 4]

zeros(3,3)
ones(2,4)
eye(4)
rand(3,3)