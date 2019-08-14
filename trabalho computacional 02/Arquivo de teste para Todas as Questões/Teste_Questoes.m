#Valores para o testes das questões 01 e 02
temp12 = 0:7;
amp12 = -2:5;

#Teste para questões 01 e 02, passando o valor de K, caso sejá positivo, será um atraso, ou seja, o deslocamento será a direita
#caso o K sejá negativo então será um adiantamento, um deslocamento a esquerda.
figure
stem(temp12, amp12); #Gráfico anterior para analise da questão 01 e 02

title("Sinal Anterior Q(1/2)"); #Estética
xlabel("Tempo");
ylabel("Amplitude");

Ex_1(temp12, amp12, 3); #Chamando a função das questões 01 e 02, passando como parâmento os valores de tempo, amplitude e o valor de K.

#Valores para teste das questões 03 e 04 
temp34 = -1:5;
amp34 = [2 1 0 1 3 1 4];

#Teste para a questão 03
figure
stem(temp34, amp34); #Gráfico anterior para analise da questão 03

title("Sinal Anterior Q(3)");#Estética
xlabel("Tempo");
ylabel("Amplitude");

Ex_3(temp34, amp34); #Chamando a função da questões 03 passando como parâmento os valores de tempo e da amplitude.

#Teste para a questão 04
figure
stem(temp34, amp34); #Gráfico anterior para analise da questão 04

title("Sinal Anterior Q(4)");#Estética
xlabel("Tempo");
ylabel("Amplitude");

Ex_4(temp34, amp34); #Chamando a função da questões 04 passando como parâmento os valores de tempo e da amplitude.

#Valores para teste da questão 05 
temp5 = -1:7;
amp5 = [2 1 0 1 3 1 4 -1 2];

#Teste para a questão 05
figure
stem(temp5, amp5); #Gráfico anterior para analise da questão 05

title("Sinal Anterior Q(5)");#Estética
xlabel("Tempo");
ylabel("Amplitude");

Ex_5(temp5, amp5); #Chamando a função da questões 05 passando como parâmento os valores de tempo e da amplitude.