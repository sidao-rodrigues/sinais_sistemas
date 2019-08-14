function E = Ex3(n,amp) #criando uma função que retorna a variável E e recebendo como parâmetros o n(tempo) e amp(amplitude)
E = 0; # Iniciando a variável E com o valor 0, já que eu irei realizar um somatório, e terei que somar o valor de E com o próximo valor, e não se  
       # pode somar um valor null com um valor numerico, então por isso deve-se iniciar o valor de E como sendo 0.
aux = 1; #criando um variável auxiliar para posição do vetor

for n = min(n):max(n) #iniciando o for de -5 a 5 ---- Pegando o mínimo do vetor tempo e o máximo do vetor tempo
  E += abs(amp(aux))^2; # pegando o valor da amplitude de colocando em módulo e realizando a potenciação, e armazenando o seu valor em E
  aux += 1; # incrementa o valor da aux
end #fim do for
endfunction #fim da função