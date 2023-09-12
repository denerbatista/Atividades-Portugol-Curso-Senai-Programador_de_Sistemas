programa {
  logico reiniciar = verdadeiro

  funcao verificaPrimo(){
    inteiro x, valor = 1, divisores = 0
    escreva("Verificador de Números Primos\n\n")
    escreva ("\nDigite um valor e direi se o mesmo é um número primo ou não:\t")
    leia (x)

    se (x > 0){
      enquanto (valor <= x){
        se ( x % valor == 0){
          divisores++
          }
        valor++
        }

        se (divisores == 2) 
          escreva ("O número ", x,"\té primo!\n")
        senao {
          escreva ("o número ", x,"\t não é primo!\n")
      } 
    }
  }
  
  funcao inicio() {
    enquanto(reiniciar){
      verificaPrimo()
      escreva("Deseja verificar outro número ?")
      escreva("Resposta:\t")
      leia(reiniciar)
    }
  }
}
