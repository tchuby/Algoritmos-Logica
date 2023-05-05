programa
{
	// descreva aqui qual a função deste algoritmo.
	
    funcao inicio()
    {
        inteiro dia, mes, ano

        escreva("\ndigite o dia: ")
        leia(dia)

        escreva("\ndigite o mes: ")
        leia(mes)

        escreva("\ndigite o ano: ")
        leia(ano)

        se (mes <= 0 ou mes > 12 ou ano <= 0) {
            escreva("\nData inválida!")
        } senao {
            inteiro ultimoDia
            se (mes == 2) {
                ultimoDia = 29
            } senao se (mes == 1 ou mes == 3 ou mes == 5 ou mes == 7 ou mes == 8 ou mes == 10 ou mes == 12) {
                ultimoDia = 31
            } senao {
                ultimoDia = 30
            }
            se (dia <= 0 ou dia > ultimoDia) {
                escreva("\nData inválida!")
            } senao {
                escreva("\nData válida!")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 61; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */