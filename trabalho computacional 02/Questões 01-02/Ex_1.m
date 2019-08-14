function Ex_1(tempo, amplitude, k)
  tempo += k; #O tempo será somado no valor de K  
              #O sinal de mais nesse caso é válido, pois como sabemos pela fórmula do deslocamento em que X(t-to)
              #e caso o K > 0 na fórmula será X(t-k) então o meu deslocamento será a direita, ou seja, uma atrasado.
              #e caso o K < 0 na fórmula ficaria X(t-(-k)) => X(t+k) então o meu deslocamento seria a esquerda, ou seja, um adiantamento
              #sabendo disso o valor que K que será recebido como parâmetro será analisado, e caso ele seja positivo eu apenas realizaria
              #o deslocamento a direita, já que ele é positivo, e caso ele fosse negativo eu teria que inverter o sinal, mas como ele 
              #já é negativo então apenas subtraio o valor no tempo, e com isso se faz simples o deslocamento no tempo, tanto para 
              #K > 0 deslocamento a direita(atraso) e K < 0 deslocamento a esquerda(adiantamento). 
 
  figure;
  stem(tempo,amplitude); #Novo gráfico com o deslocamento
  title("Sinal Atual Q(1/2)"); #Estética
  xlabel("Tempo");
  ylabel("Amplitude");
endfunction