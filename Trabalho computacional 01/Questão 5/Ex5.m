function [Xv,VetSoma] = Ex5(X1,ampl1,X2,ampl2) #cria um função Ex5 com retorno os valores somados Xv(vetor tempo) e VetSoma(vetor amplitude) 
                                               #recebe como parâmetro os vetor tempo1 e amplitude1 e vetor tempo2 e amplitude2
#Descobrindo maior e menor de cada X
if min(X1) > min(X2)
  minX = min(X2);
elseif min(X1) < min(X2)
  minX = min(X1);
else
  minX = min(X1);
endif

if max(X1) > max(X2)
  maxX = max(X1);
elseif max(X1) < max(X2)
  maxX = max(X2);
else
  maxX = max(X2);
endif

#realizando operação para colocar 0 antes ou depois 
aux1 = 1;
aux2 = 1;
auxVet1 = 1;
auxVet2 = 1;
for n = minX:maxX #cria um for, do mínimo do dois vetores tempo até o máximo do dois vetores tempo
  auxAmpl1(aux1) = 0; #o novo vetor auxAmpl1 recebe o valor 0 em cada posição de aux1
  auxAmpl2(aux2) = 0; #o novo vetor auxAmpl2 recebe o valor 0 em cada posição de aux2
  if n >= min(X1) && n <= max(X1) #Caso o valor de n seja mior ou igual que o seu mínimo ou menor ou igual a seu máximo, ou seja, 
                                  #estiver no seu intervalo de valores, adiciona o valor que foi recebido como parâmetro da ampl1
    auxAmpl1(aux1) = ampl1(auxVet1);
    auxVet1++;  #incrementa a variável auxVet1 que é para pegar os valores de ampl1
  endif
  if n >= min(X2) && n <= max(X2) #a mesma lógica da ampl1 se aplica aqui, ou seja, caso esteveja no seu intervalo preenche com os seus valores
    auxAmpl2(aux2) = ampl2(auxVet2);
    auxVet2++;
  endif
  aux1++; #incrementa aux1 para o proximo valor da auxAmpl1
  aux2++; #incrementa aux2 para o proximo valor da auxAmpl2
end
Xv = minX:maxX; #Retorna o novo vetor tempo do minX de ambos os vetores tempo até o maxX de ambos os vetores tempo.
VetSoma = auxAmpl1+auxAmpl2; #Retorna a soma dos dois vetores incrementado com os valores 0
endfunction