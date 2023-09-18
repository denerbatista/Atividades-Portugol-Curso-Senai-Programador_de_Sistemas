programa 
{   
    inclua biblioteca Matematica --> mat

    real taxaJuros, percentualJuros, tempoAnos, montanteFinal, capitalInicial, jurosCalculados, base, resultado
    real montanteArredondado, jurosArredondados
    logico reiniciarCalculo = verdadeiro

    funcao reiniciarCalculoJuros(){
        cadeia respostaReiniciar

        escreva("\n\nDeseja calcular novamente? Digite 's' ou 'sim' para recomeçar ou qualquer outra tecla para sair.\n")
        escreva("Resposta: ")
        leia(respostaReiniciar)

        se (respostaReiniciar == "s" ou respostaReiniciar == "S" ou respostaReiniciar == "sim" ou respostaReiniciar == "Sim" ou respostaReiniciar == "SIM"){
            reiniciarCalculo = verdadeiro
        }
        senao{
            reiniciarCalculo = falso
        }
    }

    funcao calcularJurosCompostos(){
        escreva("Calculadora de Juros Compostos\n")
        escreva("\nDigite o valor do Capital Inicial: R$")
        leia(capitalInicial)
        limpa()
        escreva("Digite a taxa de juros anual em porcentagem: ")
        leia(percentualJuros)
        limpa()
        escreva("Digite o período de tempo em anos: (ex: para 24 meses, digite 2 anos) ")
        leia(tempoAnos)
        limpa()

        taxaJuros = percentualJuros / 100
        base = 1 + taxaJuros
        resultado = mat.potencia(base, tempoAnos)
        montanteFinal = capitalInicial * resultado
        montanteArredondado = mat.arredondar(montanteFinal, 2)

        escreva("O montante final é de: R$", montanteArredondado, "\n")

        jurosCalculados = montanteFinal - capitalInicial
        jurosArredondados = mat.arredondar(jurosCalculados, 2)

        escreva("\nO total de juros calculados foi de: R$", jurosArredondados)
    }

    funcao inicio() {
        enquanto(reiniciarCalculo){
            calcularJurosCompostos()
            reiniciarCalculoJuros()
        }
    }
}
