programa {
  logico reiniciar = verdadeiro

  funcao verificaPrimo(){
    inteiro x, valor = 1, divisores = 0

    limpa()
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

        se (divisores == 2) {
          limpa()
          escreva ("O número ", x,"\té primo!\n\n")
        }
        senao {
          limpa()
          escreva ("o número ", x,"\t não é primo!\n\n")
        } 
    }
  }
  
  funcao inicio() {
    enquanto(reiniciar){
      verificaPrimo()
      escreva("Deseja verificar outro número ?\n")
      escreva("Resposta:\t")
      leia(reiniciar)
    }
  }
}
