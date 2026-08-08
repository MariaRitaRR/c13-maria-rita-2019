%% 1. Operações básicas
a = 12;
b = 5;
soma = a + b        
subtracao = a - b   
multiplicacao = a * b   
divisao = a / b    
potencia = a ^ b    

%% 2. Raiz, arredondamento e resto
sqrt(144)   
round(7.6)  
ceil(4.01)  
mod(250,17) 

%% 3. MDC e MMC
gcd(24,36)  
lcm(12,18)  

%% 4. Exponencial e trigonometria
exp(2)              
sin(deg2rad(30))    
cos(deg2rad(60))    
tan(deg2rad(45))    


%% 5. Criando vetores
v1 = 1:10
v2 = 10:-1:1
v3 = 0:2:20
v4 = linspace(0,100,5)

%% 6. Acessando posições de um vetor
v = [4 8 15 16 23 42];
v(1)        
v(end)      
v(2:4)      
v([1 3 6])  

%% 7. Informações sobre um vetor
v = [5 10 15 20 25];
numel(v)    
size(v)     
sum(v)      
mean(v)     
max(v)      
min(v)      

%% 8. Vetor linha e vetor coluna
v = [10 20 30 40];
size(v)     
vc = v'
size(vc)    

%% 9. Criando e acessando uma matriz
A = [3 6 9; 2 4 8; 1 5 7];
A(2,3)      
A(1,:)      
A(:,2)      
size(A)     

%% 10. Operações com matrizes
A = [1 2; 3 4];
B = [2 0; 1 5];
A + B       
A * B      
A'         

zeros(3,3)
ones(2,4)
eye(4)
rand(3,3)
