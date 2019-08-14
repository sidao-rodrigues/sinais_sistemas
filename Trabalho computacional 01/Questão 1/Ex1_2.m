aux = 1; #criando um variável auxiliarar para posição do vetor

for n = -5:5 #iniciando o for de -5 a 5 
  X(aux) = n; #criando um vetor no tempo de -5 a 5 
  if n >= -4 && n <= -2 #caso o n for maior igual a -4 e menor igual a -2 então 
    amplitude(aux) = -(n)/2 # vetor amplitude = -(n)/2 
  elseif n >= -1 && n <= 1 #caso o n for maior igual a -2 e menor igual a 1 então 
    amplitude(aux) = n+1; # vetor amplitude = n+1 
  elseif n >=2 && n <= 4 #caso o n for maior igual a 2 e menor igual a 4 então 
    amplitude(aux) = 2-n; # vetor amplitude = 2-n 
  else #caso contrario 
    amplitude(aux) = 0; # vetor amplitude = 0 
  endif #fim do if
  aux += 1; #incrementa variável auxiliar
end #fim do for
figure #criando um gráfico
stem(X,amplitude); #setando os valores do tempo e da amplitude
grid on; #estética
grid minor on; #estética