function Ex_5(tempo, amplitude) #Criando a função Ex_4 recebendo como parâmentro o tempo e amplitude
  
  tempo *= -1; #na reflexão terei que inverter todos os valores no tempo, onde um exemplo caso ele comece de 1 até 5, o sinal da reflexão 
               #ficaria o valor do tempo de -5 até -1, e para realizar essa mudanção dos valores no tempo, basta apenas multiplicar todos os 
               #valores no tempo por (-1) e com isso eu realizo a reflexão do sinal

  figure;
  stem(tempo, amplitude); #Novo gráfico com a reflexão
  title("Sinal Atual Q(5)"); #Estética
  xlabel("Tempo");
  ylabel("Amplitude");
  
endfunction