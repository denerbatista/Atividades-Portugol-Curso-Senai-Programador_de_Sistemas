programa {
  caracter opcao // variavel que guarda a opção de operador escolhida
  real fator1 // variavel que guarda o fator de operação 1
  real fator2 // variavel que guarda o fator de operação 2
  real result // variavel que guarda o resultado
  logico reiniciar = verdadeiro //variavel lógica que guarada a opção de reiniciar ou não a calculadora
 
// Função que gera texto personalizado de acordo com a escolha da operação.
  funcao operacao(cadeia tipoOperacao){
    limpa() // limpa tudo do console escrito antes dele
    escreva("Calculadora de\t", tipoOperacao, "\n")
    escreva("\nDigite o primeiro fator:\t\n")
    escreva("resposta:\t")
    leia(fator1)
    escreva("\nDigite o segundo fator:\n")
    escreva("resposta:\t")
    leia(fator2)
  }

  funcao calcular(){
    limpa() // limpa tudo do console escrito antes dele
    escreva("Calculadora básica\n")
    escreva("\nEscolha a operação:\n")
    escreva("1 - Adição\n")
    escreva("2 - Subtração\n")
    escreva("3 - Multiplicação\n")
    escreva("4 - Divisão\n")
    escreva("\nresposta:\t")
    leia(opcao)

    se (opcao == 1) {
      operacao("Adição")
      result = fator1 + fator2
      escreva("\nO resultado é:\t", result, "\n")
    }

    se (opcao == 2) {
      operacao("Subtração")
      result = fator1 - fator2
      escreva("\nO resultado é:\t", result, "\n")
    }
  
    se (opcao == 3) {
      operacao("Multiplicação")
      result = fator1 * fator2
      escreva("\nO resultado é:\t", result, "\n")
    }
  
    se (opcao == 4) {
      operacao("Divisão")
      result = fator1 / fator2
      escreva("\nO resultado é:\t", result, "\n")
    }

  }

  funcao inicio() {
    enquanto (reiniciar) {
      calcular()
      escreva("\nDeseja calcular novamente? digite 'verdadeiro' para sim e 'falso' para não:\n")
      escreva("Resposta:\t")
      leia(reiniciar)
    }
  }
}
