algoritmo "JOGO.004"
var
   JogoDaVelha:vetor[1..3,1..3]de caracter
   linhas,colunas:inteiro
   contador:inteiro
   confirmacao:logico
   posicao:inteiro
   simbolo:caracter
   vitoria:logico
   
   Procedimento Layout()
   Inicio
       //Procedimento que coloca o simbolo na posicao que usuario digitar
       escreval("+---+---+---+")
       para linhas<-1 ate 3 faca
           para colunas<-1 ate 3 faca
                se(jogodavelha[linhas,colunas]=numpcarac(posicao))entao
                       jogodavelha[linhas,colunas]<-simbolo
                       escreva("|  ",jogodavelha[linhas,colunas])
                senao
                       escreva("|  ",jogodavelha[linhas,colunas])
                fimse
           fimpara
           escreva("|")
           escreval()
           escreval("+---+---+---+")
       fimpara
   FimProcedimento
inicio
     contador<-1
     simbolo<-"X"


      escreval("+---+---+---+")
       para linhas<-1 ate 3 faca
           para colunas<-1 ate 3 faca
                jogodavelha[linhas,colunas]<-numpcarac(contador)
                escreva("|  ",jogodavelha[linhas,colunas])
                contador<-contador+1
           fimpara
           escreva("|")
           escreval()
           escreval("+---+---+---+")
       fimpara




    contador<-0
    vitoria<-falso
    repita
         confirmacao<-falso
         
         
         repita
         
               escreva("Escolha a posicao para jogar ",simbolo,": ")
               leia(posicao)
         
         
               para linhas<-1 ate 3 faca
                   para colunas<-1 ate 3 faca
                          se(numpcarac(posicao)=jogodavelha[linhas,colunas])entao
                             confirmacao<-verdadeiro
                          fimse
                   fimpara
               fimpara
         
               se(confirmacao=falso)entao
                  limpatela
                  escreval("Posicao invalida, tente novamente!!!")
                  layout()
               fimse
         ate confirmacao=verdadeiro
    
    
         limpatela
         layout()
         
                 para linhas<-1 ate 3 faca
                     se(jogodavelha[linhas,1]=simbolo)e(jogodavelha[linhas,2]=simbolo)e(jogodavelha[linhas,3]=simbolo)entao
                        vitoria<-verdadeiro
                     fimse
                 fimpara
                 
                 para colunas<-1 ate 3 faca
                      se(jogodavelha[1,colunas]=simbolo)e(jogodavelha[2,colunas]=simbolo)e(jogodavelha[3,colunas]=simbolo)entao
                         vitoria<-verdadeiro
                      fimse
                 fimpara


                 se(jogodavelha[1,1]=simbolo)e(jogodavelha[2,2]=simbolo)e(jogodavelha[3,3]=simbolo)entao
                    vitoria<-verdadeiro
                 fimse
                 
                 se(jogodavelha[1,3]=simbolo)e(jogodavelha[2,2]=simbolo)e(jogodavelha[3,1]=simbolo)entao
                    vitoria<-verdadeiro
                 fimse
                 
                 se(vitoria=verdadeiro)entao
                    escreval("[",simbolo,"] VENCEU!!!!")
                 senao
                    se(simbolo="X")entao
                       simbolo<-"O"
                    senao
                       simbolo<-"X"
                    fimse
                 fimse
                 
                 contador<-contador+1
    ate (contador=9)ou(vitoria=verdadeiro)
    
    
    se(vitoria=falso)e(contador=9)entao
       escreval("Deu Velha!!!!")
    fimse
    
    escreval("Programa Finalizado!!!!")
fimalgoritmo