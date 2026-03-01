algoritmo "JOGO.002"
var
   jogo:vetor[1..3,1..3]de caracter
   linha,coluna:inteiro
   contador:inteiro
   posicao:inteiro
   simbolo:caracter
   liberacao:logico
   vitoria:logico
   
   procedimento layout()
   inicio
         escreval("+---+---+---+")
         para linha<-1 ate 3 faca
            para coluna<-1 ate 3 faca
                  se(NUMPCARAC(posicao)=jogo[linha,coluna])entao
                    jogo[linha,coluna]<-simbolo
                    escreva("|  ",jogo[linha,coluna]:1)
                  senao
                    escreva("|  ",jogo[linha,coluna]:1)
                  fimse
            fimpara
            escreva("|")
            escreval()
            escreval("+---+---+---+")
         fimpara
   fimprocedimento
inicio
    contador<-1
    //IMPORTANTE-VARIAVEL |SIMBOLO| RECEBE A STRING |X| NO INICIO DO PROGRAMA
    simbolo<-"X"
    
    
    
    //AQUI A MATRIZ |JOGO| RECEBE OS NUMEROS
    para linha<-1 ate 3 faca
        para coluna<-1 ate 3 faca
             //USAMOS A FUNCAO |NUMPCARAC| QUE CONVERTE NUMEROS EM CARACTER
             jogo[linha,coluna]<-NUMPCARAC(contador)
             contador<-contador+1
        fimpara
    fimpara
    
    
    
    //CHAMA O PROCEDIMENTO QUE IMPRIME A TABELA PARA O USUARIO
    layout
    contador<-0
    
    vitoria<-falso
    
    repita
        //ESSE LOOP E IMPORTANTE PARA GARANTIR QUE O USUARIO SO CONSIGA
        //PROSSEGUIR SE A POSICAO DIGITADA FOR VALIDA.
        repita
           //A VARIAVEL |LIBERACAO| RECEBE VALOR FALSO PARA GARANTIR
           //QUE O USUARIO SO PROSSIGA SE AS CONDICOES FOREM ATENDIDAS
           liberacao<-falso
           escreva("Quer jogar ",simbolo," em qual posicao? ")
           leia(posicao)
        

            para linha<-1 ate 3 faca
                para coluna<-1 ate 3 faca
                    //NOVAMENTE USAMOS A FUNCAO |NUMPCARAC|
                    se(NUMPCARAC(posicao)=jogo[linha,coluna])entao
                           liberacao<-verdadeiro
                    fimse
                fimpara
            fimpara
            
            //SE A POSICAO E VALIDA ENTAO O CONTADOR RECEBE +1
            //IMPRIME MENSAGEM DE ERRO CASO A POSICAO DIGITADA SEJA INVALIDA
            se(liberacao=verdadeiro)entao
                contador<-contador+1
            senao
                limpatela
                escreval("JOGADA INVALIDA, TENTE NOVAMENTE!!!")
                LAYOUT()
            fimse
        ate liberacao=verdadeiro

        //LIMPA TELA E MOSTRA PROCEDIMENTO
        limpatela
        LAYOUT()
        
        
        //TESTE DE CODICOES PARA VITORIA


                //TESTE COM VARIACAO DE LINHAS
                para linha<-1 ate 3 faca
                        se(jogo[linha,1]=simbolo)e(jogo[linha,2]=simbolo)e(jogo[linha,3]=simbolo)entao
                           vitoria<-verdadeiro
                        fimse
                fimpara
        
        
        
                //TESTE COM VARIACAO DE COLUNAS
                para coluna<-1 ate 3 faca
                     se(jogo[1,coluna]=simbolo)e(jogo[2,coluna]=simbolo)e(jogo[3,coluna]=simbolo)entao
                        vitoria<-verdadeiro
                     fimse
                fimpara
                


                //TESTE DIAGONAL PRINCIPAL
                se(jogo[1,1]=simbolo)e(jogo[2,2]=simbolo)e(jogo[3,3]=simbolo)entao
                   vitoria<-verdadeiro
                fimse


                //TESTE DIAGONAL SECUNDARIA
                se(jogo[1,3]=simbolo)e(jogo[2,2]=simbolo)e(jogo[3,1]=simbolo)entao
                   vitoria<-verdadeiro
                fimse



        //IMPRIME MENSAGEM DE VITORIA CASO A ALGUMA CONDICAO SEJA ATENDIDA
        se(vitoria=verdadeiro)entao
           escreval("VENCEDOR [",simbolo,"]!!")
        fimse
                
        //MUDA O JOGADOR
        se(simbolo="X")entao
            simbolo<-"O"
        senao
           simbolo<-"X"
        fimse

    ate (contador=9) ou (vitoria=verdadeiro)
    
    
    //SE NENHUM JOGADOR VENCER ENTAO IMPRIME MENSAGEM DE EMPATE (DEU VELHA)
    se(contador=9)e(vitoria=falso)entao
       escreval("DEU VELHA!!")
    fimse
    
   escreval("=====================================")
   escreval("FIM DO JOGO...")
fimalgoritmo