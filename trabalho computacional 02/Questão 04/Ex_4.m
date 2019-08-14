function Ex_4(tempo, ampli) #Criando a função Ex_4 recebendo como parâmentro o tempo e amplitude
  
  N = min(tempo)*2:max(tempo)*2; #criando um novo vetor tempo (N) do intervalo do mínino vezes 2 até o intervalo máximo vezes 2
                                 #A multiplicação por 2 é necessário já que como estou trabalhando com expansão então,
                                 #os valores irião variar de 2 em 2(com intervalor de 0 entre eles, já que o sinal é tempo discreto) 
                                 #e com isso eu preciso duplicar o meu vetor tempo.
  
  aux1 = 1; #Criando variáveis auxiliar aux1 e aux12
  aux2 = 1;
  auxAmpl = 1:length(N); #Criando um vetor auxAmpl que receberá as novas amplitudes da expansão.
  auxAmpl *= 0; #Aqui estou setando 0 para todos os valores do vetor auxAmpl
  
  for i = min(tempo):max(tempo)  #criando um for do intervalo do vetor tempo original do mínino até o máximo
    auxAmpl(aux1) = ampli(aux2); #estou atribuindo o valor do sinal original ao vetor auxAmpl, e como o novo vetor varia o sinal original 
                                 #no intervalo de 2 em 2, então eu apenas incremento a variável auxilar aux1 para ir de 2 em 2, e designo cada 
                                 #valor do sinal original ao vetor auxAmpl, sendo que será lido cada valor de ampli, e a variável auxilar aux2
                                 #será incrementada de 1 em 1.  
    aux1 += 2;
    aux2++;
  end
  
  figure;
  stem(N, auxAmpl); #Novo gráfico com a expansão
  title("Sinal Atual Q(4)"); #Estética
  xlabel("Tempo");
  ylabel("Amplitude");
  
endfunction