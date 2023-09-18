programa {
  inclua biblioteca Util -->u
  logico reiniciarLogico = verdadeiro
  inteiro numeroSecreto = u.sorteia(1, 100)
  inteiro contadorDeTentativas = 0
  inteiro palpite
  cadeia respostaReiniciar

  funcao inicio() {
    enquanto(reiniciarLogico){
      contadorDeTentativas = 0
      escreva("\nJogo de Advinhação\n\n")
      contadorDeTentativas++
      escreva("Palpite\t", contadorDeTentativas, ":\t")
      leia(palpite)
    
      enquanto(contadorDeTentativas < 10){
        se(palpite == numeroSecreto){
        escreva("\nJogo de Advinhação\n\n")
        escreva("Parabéns você acertou com\t",contadorDeTentativas+1 ,"\ttentativas o número secreto:\t", numeroSecreto,"\n")
        pare
        }

        se(palpite < numeroSecreto){
          contadorDeTentativas++
          escreva("\nJogo de Advinhação\n\n")
          escreva("O seu palpite está abaixo do número secreto.\n\n")
          escreva("Palpite\t", contadorDeTentativas, ":\t")
          leia(palpite)
        }

        se(palpite > numeroSecreto){
          contadorDeTentativas++
          escreva("\nJogo de Advinhação\n\n")
          escreva("O seu palpite está acima do número secreto.\n\n")
          escreva("Palpite\t", contadorDeTentativas, ":\t")
          leia(palpite)
        }

        se(contadorDeTentativas == 10){
        escreva("\n\nFim de Jogo suas 10 tentativas falharam.\n")
        pare
        }
      }

    escreva("\n\nPara calcular novamente digite 's' ou 'sim' ou qualquer letra para finalizar\n")
    escreva("Resposta:\t")
    leia(respostaReiniciar)

    se (respostaReiniciar == "s" ou respostaReiniciar == "S" ou respostaReiniciar == "sim" ou respostaReiniciar == "Sim" ou respostaReiniciar == "SIM"){
      reiniciarLogico = verdadeiro
    }
    senao{
      reiniciarLogico = falso
    }
 }
  }
}
