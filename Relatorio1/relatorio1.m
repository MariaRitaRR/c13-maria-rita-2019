clc;
clear all;
close all;

%% Exercício 1
v = zeros(1,3);
for i = 1:3
    v(i) = input(sprintf('Digite a medição %d: ', i));
end
media = mean(v);
fprintf('Média: %.2f\n', media);
fprintf('Maior valor: %g\n', max(v));
fprintf('Menor valor: %g\n', min(v));
if media >= 8
    disp('Resultado alto');
elseif media >= 5
    disp('Resultado intermediário');
else
    disp('Resultado baixo');
end

%% Exercício 2
A = [3 8 2 10 5 7 1 6];
B = zeros(size(A));
for i = 1:length(A)
    if A(i)>= 6
        B(i) = 2*A(i)
    else
        B(i) = A(i) + 3;
    end
end

disp('Vetor A:'); disp(A);
disp('Vetor B:'); disp(B);
fprintf('Soma de B: %g\n', sum(B));
fprintf('Média de B: %.2f\n', mean(B));
fprintf('Maior de B: %g\n', max(B));
fprintf('Menor de B: %g\n', min(B));

%% Exercício 3
A = [14 7 20 9 6 11 18 5];
B = zeros(size(A));
cont = 0;
for i = 1:length(A)
    resto = rem(A(i),2);
    if resto == 0
        B(i) = A(i);
        cont = cont + 1;
    else
        B(i) = 0;
    end
end
disp('Vetor B:'); disp(B);
fprintf('Quantidade de numeros pares: %d\n', cont);

%% Exercício 4 
a = input('Digite o primeiro valor: ');
b = input('Digite o segundo valor: ');
disp('1 - Soma');
disp('2 - Subtração');
disp('3 - Multiplicação');
disp('4 - Divisão');
op = input('Escolha a operação: ');
switch op
    case 1
        fprintf('Resultado: %g\n', a+b);
    case 2
        fprintf('Resultado: %g\n', a-b);
    case 3
        fprintf('Resultado: %g\n', a*b);
    case 4
        if b == 0
            disp('A operação não pode ser realizada (divisão por zero).');
        else
            fprintf('Resultado: %g\n', a/b);
        end
    otherwise
        disp('Opção inválida');
end

%% Exercício 5 
soma = 0;
contador = 0;
while soma <= 4
    x = rand;
    soma = soma + x;
    contador = contador + 1;
    fprintf('Sorteado: %.4f | Soma atual: %.4f\n', x, soma);
end
if contador > 8
    disp('Muitas repetições');
else
    disp('Poucas repetições');
end
fprintf('Total de repetições: %d\n', contador);

%% Exercício 6 
A = [2 7 4 9;
    6 1 8 3];
B = zeros(size(A));
for j = 1:size(A,1)
    for i = 1:size(A,2)
        if A(j,i) > 5
            B(j,i) = A(j,i)*2;
        else
            B(j,i) = A(j,i)+5;
        end
    end
end
disp('Matriz A:'); disp(A);
disp('Matriz B:'); disp(B);
disp('Transposta de B:'); disp(B');
disp('Primeira linha de B:'); disp(B(1,:));
disp('Terceira coluna de B:'); disp(B(:,3));

%% Exercício 7
A = [5 12 7 3 9 14];
[s, m] = analisa_vetor(A);
if m >= 8
    disp('Média elevada');
else
    disp('Média abaixo de 8');
end
fprintf('Soma: %g\n', s);
fprintf('Média: %.2f\n', m);
%% Exercício 8 
A = [1 5 3 8;
    6 2 7 4];
B = zeros(size(A));
B = transforma_matriz(A, B);
disp('Matriz resultante B:'); disp(B);

%% Exercício 9
t1 = input('Digite o primeiro valor: ', 's');
t2 = input('Digite o segundo valor: ', 's');
disp(t1); disp(t2);
n1 = str2num(t1);
n2 = str2num(t2);
fprintf('Soma: %g\n', n1+n2);
fprintf('Multiplicação: %g\n', n1*n2);
soma = n1 + n2;
if soma > 20
    disp('Soma alta');
elseif soma == 20
    disp('Soma igual a 20');
else
    disp('Soma baixa');
end

%% Exercício 10
dados = [12 18 10 25 15];
md = mean(dados);
s = sum(dados);
maior = max(dados);
menor = min(dados);

fprintf('Soma: %g\n', s);
fprintf('Média: %.2f\n', md);
fprintf('Maior: %g\n', maior);
fprintf('Menor: %g\n', menor);
md = mean(dados);
cont = 0;
for i = 1:length(dados)
    if dados(i) >= md
        cont = cont + 1;
    end
end
fprintf('Valores >= média: %d\n', cont);
disp('1 - Gráfico de barras');
disp('2 - Gráfico de pizza');
op = input('Escolha: ');
switch op
    case 1
        bar(dados);
        title('Gráfico de barras dos dados');
    case 2
        pie3(dados);
        title('Gráfico de pizza dos dados');
    otherwise
        warning('Nenhum gráfico foi criado.');
end
if cont > length(dados)/2
    disp('Maioria dos valores acima ou igual à média');
else
    disp('Menos da metade dos valores acima ou igual à média');
end
