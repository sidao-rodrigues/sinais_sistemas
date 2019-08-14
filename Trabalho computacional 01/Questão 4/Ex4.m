function P = Ex4(n,ampli) #criando uma função que retorna a variável P e recebendo como parâmetros o n(tempo) e amp(amplitude)
E = 0; #iniciando a variável E(energia) com valor 0
P = 0; #iniciando a variável P(potência) com valor 0
aux = 1; #criando um variável auxilar para posição do vetor
minN = min(n); #pegando valor mínimo de n, já que se for pegar depois ele não reconhece 

for i = min(n):max(n) #iniciando o for de -5 a 5 
  E += abs(ampli(aux))^2; #pegando o valor da amplitude em  cada ponto e colocando em módulo e realizando a potênciação e armazenando o somatório em E
  aux += 1; #incrementando aux, para ler o vetor ampli
end #fim do for
P = E/((max(n) - minN)+1);#realizando a formula da potência, que nada mais é que a Energia divido pela diferença de n2 - n2 + 1 e retornando o valor
#para a classe que a chamou. 

endfunction