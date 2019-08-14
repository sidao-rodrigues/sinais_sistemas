function Ex_3(tempo, amplitude) #Criando a função Ex_3 recebendo como parâmentro o tempo e amplitude
  
  if(mod(tempo(1),2) != 0) #Verificando se o valor inicial no tempo é um sinal impar, caso sejá eu realizo faço ele começar com um valor par
    tempo = [tempo(1)-1, tempo]; #o novo vetor tempo irá ser adicionado um novo valor que será o valor par do inicio do vetor
    amplitude = [0, amplitude];  #adiciono o valor 0 no tempo par que foi adicionado ao vetor tempo, para ambos terem os mesmo tamanho,
  endif
  
  if(mod(max(tempo),2) != 0) #Realizo o mesmo procedimento para o número máximo do vetor tempo, caso ele seja impar faço o mesmo.
    tempo = [tempo, max(tempo)+1]; #Adiciono o valor máximo mais 1 ao final do vetor tempo, e com isso terei um valor par
    amplitude = [amplitude, 0]; #Adiciono o valor na amplitude 0 para esse novo valor no tempo, para eles terem coesão nos valores.
  endif
  
  aux = 1; #criando uma variável auxiliarar
  X = zeros(1, max(tempo)/2 - min(tempo)/2 + 1); #Criando um vetor auxiliar de X que será o novo tempo, com os valores de 0.
                                                 #seu tamanho irá ser os novos valores da compressão
  amplAux = zeros(1, max(tempo)/2 - min(tempo)/2 + 1); #Criando um vetor auxiliar de amplAux que será os novos valores na amplitude da compressão
                                                       #Preenchendo com zeros
  
  for n = min(tempo)/2:max(tempo)/2 #criando um for para ir do mínino até o máximo para alocar as novas amplitudes
    amplAux(aux) = amplitude(2 * aux - 1); #como na compressão há uma variação de 2 em 2 no tempo adicionando o novo valor da amplitude
                                           #então será pego o valor inicial 1 e variando de 2 em 2, ou seja, 1-3-5-7... então faz-se esse procedimento
                                           #pegando o valor 2 * aux - 1 do sinal original.
    X(aux) = n; #O valor no tempo, recebe os valores de n do for
    aux++; #incremento da aux
  end
  
  figure;
  stem(X,amplAux);
  title("Sinal Atual Q(3)"); #Estética
  xlabel("Tempo");
  ylabel("Amplitude");
  
  #xlim([tempo(1) max(tempo)]);
  #ylim([min(amplitude) max(amplitude)]);
endfunction