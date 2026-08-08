%% 1. Entrada e saída
cidade = input('Digite o nome de uma cidade: ', 's');
disp(cidade)
fprintf('Cidade escolhida: %s\n', cidade)

%% 2. if, elseif e else
x = 7;
if x > 10
    disp('Maior que 10')
elseif x == 10
    disp('Igual a 10')
else
    disp('Menor que 10')
end

%% 3. for
for i = 1:5
    resultado = i * 3;
    disp(resultado)
end

%% 4. while
x = 0;
i = 0;
while i < 5
    x = x + 1;
    i = i + 1;
    disp(x)
end

%% 5a. switch
opcao = 2;
switch opcao
    case 1
        disp('Opcao A')
    case 2
        disp('Opcao B')
    case 3
        disp('Opcao C')
    otherwise
        disp('Opcao invalida')
end

%% 5b. Chamando a função
resultado = funcao_triplo(8);
fprintf('O triplo é: %d\n', resultado)   % 24