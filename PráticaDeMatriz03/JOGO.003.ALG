algoritmo "JOGO.003"
var
   tabela:vetor[1..3,1..3]de caracter
   colunas,linhas:inteiro
   contador:inteiro
   confirmacao:logico
   posicao:inteiro
   simbolo:caracter
   vitoria:logico
   resposta:caracter
   continue:logico
   FIMDEJOGO:LOGICO

   
   PROCEDIMENTO LAYOUT()
   INICIO
      //PROCEDIMENTO QUE IMPLEMENTA O SIMBOLO NO LOCAL QUE O USUARIO ESCOLHEU
      //ALEM DISSO IMPRIME A TABELA ATUALIZADA
      escreval("+---+---+---+")
      para linhas<-1 ate 3 faca
         para colunas<-1 ate 3 faca
             se(tabela[linhas,colunas]=NUMPCARAC(POSICAO))entao
                  tabela[linhas,colunas]<-simbolo
                  escreva("|  ",tabela[linhas,colunas])
             senao
                  escreva("|  ",tabela[linhas,colunas])
             fimse
         fimpara
         escreva("|")
         escreval()
         escreval("+---+---+---+")
      fimpara
   
   
   
   
   FIMPROCEDIMENTO
inicio

//LOOP QUE COBRE TODO O JOGO
//FAZ TUDO REPETIR
REPITA
    LIMPATELA
    FIMDEJOGO<-FALSO
    contador<-1
    simbolo<-"X"
    //IMPRIME O LAYOUT PARA O USUARIO E IMPLEMENTA OS NUMEROS NA MATRIZ
    escreval("+---+---+---+")
    para linhas<-1 ate 3 faca
       para colunas<-1 ate 3 faca
            //FUNCAO {NUMPACARAC} USADA PARA CONVERTER INTEIRO EM CARACTER
            tabela[linhas,colunas]<-NUMPCARAC(contador)
            escreva("|  ",tabela[linhas,colunas])
            contador<-contador+1
       fimpara
       escreva("|")
       escreval()
       escreval("+---+---+---+")
    fimpara
    


    vitoria<-falso
    contador<-0
    REPITA
       confirmacao<-falso
        repita
            //ENTRADA DE DADOS
            escreva("VAI QUERER JOGAR ",simbolo," EM QUAL POSICAO? ")
            leia(posicao)
        
        
              para linhas<-1 ate 3 faca
                 para colunas<-1 ate 3 faca
                         //FUNCAO {NUMPCARAC} USADA NOVAMENTE PARA GARANTIR
                         //QUE A CODICAO SEJA SATISFEITA
                         se(numpcarac(posicao)=tabela[linhas,colunas])entao
                            //VARIAVEL CONFIRMACAO RECEBE VALOR VERDADEIRO
                            //PERMITINDO QUE O PROGRAMA CONTINUE
                            confirmacao<-verdadeiro
                         fimse
                 fimpara
              fimpara
              
              //EXIBE MENSAGEM DE ERRO PARA O USUARIO
              se(confirmacao=falso)entao
                  limpatela
                  escreval("POSICAO INVALIDA, DIGITE NOVAMENTE!!!")
                  layout()
              fimse
              
        ate confirmacao=verdadeiro //O LACO VOLTA PARA A ENTRADA DE DADOS ATE O
                                   // USUARIO DIGITAR POSICAO VALIDA
    
    
    
    
        //LIMPATELA E MOSTRA O PROCEDIMENTO
        limpatela
        LAYOUT()
    
    
               //AREA PARA TESTAR AS CODICOES DE VITORIA
    
    
               //TESTE NAS LINHAS DA TABELA
               para linhas<-1 ate 3 faca
                   se(tabela[linhas,1]=simbolo)e(tabela[linhas,2]=simbolo)e(tabela[linhas,3]=simbolo)entao
                      vitoria<-verdadeiro
                   fimse
               fimpara
               
               
               
               //TESTE NAS COLUNAS DA TABELA
               para colunas<-1 ate 3 faca
                   se(tabela[1,colunas]=simbolo)e(tabela[2,colunas]=simbolo)e(tabela[3,colunas]=simbolo)entao
                      vitoria<-verdadeiro
                   fimse
               fimpara
               
               //TESTE NA DIAGONAL PRINCIPAL
               se(tabela[1,1]=simbolo)e(tabela[2,2]=simbolo)e(tabela[3,3]=simbolo)entao
                  vitoria<-verdadeiro
               fimse
               
               
               //TESTE NA DIAGONAL SECUNDARIA
               se(tabela[1,3]=simbolo)e(tabela[2,2]=simbolo)e(tabela[3,1]=simbolo)entao
                  vitoria<-verdadeiro
               fimse
               




               
               
        //TRECHO IMPORTANTE PARA A MUDANCA DE JOGADOR E MENSAGEM DE VITORIA
         SE(VITORIA=VERDADEIRO)ENTAO
            ESCREVAL("PARABENS ",SIMBOLO," VOCE VENCEU!!!!")
         SENAO
                 SE(SIMBOLO="X")ENTAO
                    SIMBOLO<-"O"
                 SENAO
                     SIMBOLO<-"X"
                 FIMSE
         FIMSE
    
    
      contador<-contador+1
    ATE (contador=9) ou (vitoria=verdadeiro)
    
    
    //A MENSAGEM DE EMPATE SO E IMPRENSA SE DUAS CONDICOES FOREM ATENDIDAS
    se(vitoria=falso)e(contador=9)entao
       escreval("DEU VELHA!!")
    fimse
    

    ESCREVAL("=====================================")



     //ESSE TRECHO IMPEDE QUE O USUARIO DIGITE OUTRA COISA ALEM DO PERMITIDO
     repita
           continue<-falso
           //AQUI O USUARIO ESCOLHE SE QUER JOGAR NOVAMENTE
           ESCREVA("QUER JOGAR NOVAMENTE [S/N]?")
           LEIA(RESPOSTA)

          se(resposta="N")ou(resposta="NAO")ou(resposta="nao")ou(resposta="n")entao
             continue<-verdadeiro
             //A VARIAVEL {FIMDEJOGO} RECEBE VALOR VERDADEIRO
             FIMDEJOGO<-VERDADEIRO
          fimse
    
          se(resposta="S")ou(resposta="SIM")ou(resposta="sim")ou(resposta="s")entao
             continue<-verdadeiro
          fimse
          
          se(continue=falso)entao
             limpatela
             escreval("RESPOSTA INVALIDA, TENTE NOVAMENTE!!!")
          fimse
          
     ate continue=verdadeiro

ATE FIMDEJOGO=VERDADEIRO
   ESCREVAL("PROGRAMA FINALIZADO...")
fimalgoritmo