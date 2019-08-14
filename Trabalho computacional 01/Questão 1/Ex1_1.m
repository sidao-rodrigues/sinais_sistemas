X = -5:5; #criando vetor no tempo de -5 a 5
amplitude = [0 2 1.5 1 0 1 2 0 -1 -2 0]; #atribuindo valores ao vetor, referente a amplitude a partir da expressão dada

figure #criando um gráfico
stem(X,amplitude); #criando o gráfico passando os valores do tempo e da amplitude
grid on; #estética
grid minor on; #estética

#complemento da questão 3
#E = Ex3(X,amplitude) #resultado da questão Ex3 onde está sendo chamada a função Ex3 passando como parâmetro o tempo
#tempo(X) e a amplitude(amplitude) e tendo como resultado a Energia do sinal

#complemento da questão 4
P = Ex4(X,amplitude) #resultado da questão Ex4 onde está sendo chamada a função Ex4 passando como parâmetro o tempo
#tempo(X) e a amplitude(amplitude) e tendo como retorno a Potência do sinal, pode ser feito de outra forma como será mostrada a baixo.

Poten = E/((max(X) - min(X))+1) #pode ser feito desse jeito também, onde se aproveita a função do exercício anterior e divide por ((n2-n1)+1)
#onde se tem o resultado da potência do sinal, observa-se que o P e Poten tem o mesmo valor, ou seja, aproveita a função já feita para economizar 
#código e tempo.