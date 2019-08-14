X1 = -5:2;        #define o intervalo do vetor tempo de x1 que esta relacionado a amplitude1 
X2 = 1:6;         #define o intervalo do vetor tempo de x2 que esta relacionado a amplitude2 
ampl1 = -4:3;     #define os valores da amplitude1
ampl2 = -10:-5;   #define os valores da amplitude1

#Lembrando-se que os valores do tempo e da amplitude deve conter o mesmo tamanho, caso o vetor tempo1 tenha 5 intervalos a amplitude deve também
#conter também um tamanho de 5 valores

[Xv,VetSoma] = Ex5(X1,ampl1,X2,ampl2); #chama o método Ex5 que realiza a soma dos vetores 
figure #cria um nova imagem

stem(Xv,VetSoma); #cria o gráfico com os valores que recebeu da classe Ex5 contendo a soma dos sinais, e a nova amplitude
grid on; #estética
grid minor on; #estética