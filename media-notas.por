programa {
    real result
    real nota1, nota2, nota3, nota4
    logico reiniciar = verdadeiro

    funcao reiniciarMedia(){
    cadeia respostaReiniciar

    escreva("\n\nPara calcular novamente digite 's' ou 'sim' ou qualquer letra para finalizar\n")
    escreva("Resposta:\t")
    leia(respostaReiniciar)
    limpa()

    se (respostaReiniciar == "s" ou respostaReiniciar == "S" ou respostaReiniciar == "sim" ou respostaReiniciar == "Sim" ou respostaReiniciar == "SIM"){
      reiniciar = verdadeiro
    }
    senao{
      reiniciar = falso
    }
  }

  funcao calcularMedia(){
    escreva("Descubra se foi aprovado inserindo suas 4 notas\n")
    
    escreva("\nAs notas são de 0 a 10 e a média é 6. \n")

    escreva ("\nDigite a nota 1:")
    leia(nota1)
    limpa()
                
    escreva ("Digite a nota 2:")
    leia(nota2)
    limpa() 
            
    escreva ("Digite a nota 3:")
    leia(nota3)
    limpa()            

    escreva ("Digite a nota 4:")
    leia(nota4)
    limpa()

    result= (nota1 + nota2 + nota3 + nota4) / 4

    escreva("Sua média é: " , result, "\tpontos\n")

    se (result >= 6) {
      escreva("\nVocê foi aprovado pois está acima de 6")
    }
            
    senao se(result<6){
      escreva("\nVocê foi reprovado pois está abaixo de 6")
    }
  }
     
  funcao inicio(){
    enquanto(reiniciar){
    calcularMedia()
    reiniciarMedia()
    }
  }
}
