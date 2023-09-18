programa {

    caracter opcao
    real celsius
    real fahrenheit
    real result
    logico reiniciar = verdadeiro 
    

    funcao conversaoCelsius(cadeia tipoConversao){
      limpa()
      escreva("Convertor de\t", tipoConversao, "\n")
      escreva("\nDigite a temperatura em Celsius:\t\n")
      escreva("resposta:\t")
      leia(celsius)
    }

    funcao conversaoFahrenheit(cadeia tipoConversao){
      limpa()
      escreva("Conversor de\t", tipoConversao, "\n")
      escreva("\nDigite a temperatura em Fahrenheit:\t\n")
      escreva("resposta:\t")
      leia(fahrenheit)
    }


    funcao calcular(){
      limpa() 
      escreva("Conversor de Temperatura\n")
      escreva("\nEscolha a Conversão:\n")
      escreva("1 - Fahrenheit para Celsius\n")
      escreva("2 - Celsius para Fahrenheit \n")
      escreva("\nresposta:\t")
      leia(opcao)

    se (opcao == 1) {
      conversaoFahrenheit("Fahrenheit x Celsius")
      result = (fahrenheit - 32) / 1.8
      limpa()
      escreva("\nO resultado é:\t", result, "°C\n")
    }

    se (opcao == 2) {
      conversaoCelsius("Celsius x Fahrenheit")
      result = celsius * 1.8 + 32
      limpa()
      escreva("\nO resultado é:\t", result, "°F\n")
    }
    
    }
    funcao inicio() {
      enquanto (reiniciar) {
      calcular()
      escreva("\nDeseja converter novamente? digite 'verdadeiro' para sim e 'falso' para não:\n")
      escreva("Resposta:\t")
      leia(reiniciar)
      }
    }

    }
  
