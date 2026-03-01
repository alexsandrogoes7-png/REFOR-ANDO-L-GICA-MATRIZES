algoritmo "JOGO.001"
var
   m:vetor[1..3,1..3]de caracter
   cont:inteiro
   l,c:inteiro
   vitoria:logico
   number:inteiro
   simbolo:caracter
   posicao:logico
   
   
   procedimento LAYOUT()
   inicio
            escreval("+---+---+---+")
            para l<-1 ate 3 faca
                 para c<-1 ate 3 faca
                      se(numpcarac(number)=m[l,c])entao
                         m[l,c]<-simbolo
                         escreva("|  ",m[l,c]:1)
                      senao
                         escreva("|  ",m[l,c]:1)
                      fimse
                 fimpara
                 escreva("|")
                 escreval()
                 escreval("+---+---+---+")
            fimpara
   
   fimprocedimento
   
   
inicio
   cont<-0
   vitoria<-falso
   simbolo<-"X"

   
 //MOSTRA O LAYOUT DO JOGO E COLOCA OS NUMEROS EM CADA POSICAO DA MATRIZ
   escreval("+---+---+---+")
   para l<-1 ate 3 faca
      para c<-1 ate 3 faca
           cont<-cont+1
           m[l,c]<-numpcarac(cont)
           escreva("|  ",m[l,c]:1)
      fimpara
      escreva("|")
      escreval()
      escreval("+---+---+---+")
   fimpara
   


   cont<-0

   repita

      



      //VERIFICA SE A JOGADA E VALIDA, SE O USUARIO DIGITAR UM NUMERO QUE
      //JA FOI DIGITADO OU QUE NAO PERTENCE A MATRIZ O LOOP VAI REPETIR.
      repita


         posicao<-falso //VARIAVEL RECEBE VALOR LOGICO FALSO
         //IMPEDE QUE O LOOP INTERNO FINALIZE SEM ATENDER AS CONDICOES.

         escreva("Digite um numero: ")
         leia(number)
         
         
         para l<-1 ate 3 faca
           para c<-1 ate 3 faca
                se(numpcarac(number)=m[l,c])entao
                   posicao<-verdadeiro
                fimse
            fimpara
         fimpara
         
         
         //O CONTADOR SO E INCREMENTADO SE PASSAR NA CONDICAO
         se(posicao=verdadeiro)entao
            cont<-cont+1
         senao
          //IMPRIME UMA MENSAGEM DE ERRO E MOSTRA O PROCEDIMENTO
            limpatela
            escreval("JOGADA INVALIDA, TENTE NOVAMENTE!!")
            LAYOUT()
         fimse
         
      ate (posicao=verdadeiro)
   

   
   
    //MOSTRA O PROCEDIMENTO
      limpatela
      LAYOUT()
   
   
      //AREA PARA TESTAR CONDICOES DE VITORIA
   
   
              //TESTE COM VARIACAO DE LINHAS
              para l<-1 ate 3 faca
                   se(m[l,1]=simbolo) e (m[l,2]=simbolo) e (m[l,3]=simbolo) entao
                     vitoria<-verdadeiro
                   fimse
              fimpara
   
   
              //TESTE COM VARIACAO DE COLUNAS
              para c<-1 ate 3 faca
                 se(m[1,c]=simbolo)e(m[2,c]=simbolo)e(m[3,c]=simbolo)entao
                     vitoria<-verdadeiro
                 fimse
              fimpara
   
   
              //TESTE DIAGONAL
              se(m[1,1]=simbolo)e(m[2,2]=simbolo)e(m[3,3]=simbolo)entao
                 vitoria<-verdadeiro
              fimse
   
              //TESTE DIAGONAL
              se(m[1,3]=simbolo)e(m[2,2]=simbolo)e(m[3,1]=simbolo)entao
                 vitoria<-verdadeiro
              fimse
   
   
   
        //IMPRIME A MENSAGEM DO VENCEDOR SEPARADA PARA CASO O USUARIO GANHE
      //COM DUAS OU MAIS CONDICOES A MENSAGEM SEJA IMPRESSA APENAS UMA VEZ.
      se(vitoria=verdadeiro)entao
         escreval("VENCEDOR [",simbolo,"] !!!!")
      fimse
   
   
   
   
      //MUDANCA DE JOGADOR
      se(simbolo="X")entao
         simbolo<-"O"
      senao
         simbolo<-"X"
      fimse
   
   ate (cont=9) ou (vitoria=verdadeiro)
   
   //CASO NENHUMA CONDICAO DE VITORIA FOR SATISFEITA ENTAO IMPRIME MENSAGEM
   //DE EMPATE
   se(cont=9)e(vitoria=falso)entao
     escreval("DEU VELHA!!")
   fimse
   
   
   escreval("=====================================")
   escreval("FIM DO JOGO...")
fimalgoritmo