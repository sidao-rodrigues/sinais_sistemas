X = 0; #iniciando variável do somatório com 0
t = 0:0.01:2; #iniciando vetor tempo de 0 até 2 variando de 0.01

for k = 1:5  #iniciando for de 1 até 5 
  X += ((k^2)/(k+1))*cos(2*pi*k*t);  #realizando o somatório da função dat e armazenando em X, 
  #no caso quando o valor de K altera a amplitude alterar junto com  frequencia, pois como 2piF é o omega e ele não se altera(constante),
  #logo o K será a frequência e a fase é 0. 
end #fim do for 

figure; #criando um gráfico
plot(t,X); #criando o gráfico de tempo em relação ao somatório
grid on; #estética
grid minor on; #estética.

