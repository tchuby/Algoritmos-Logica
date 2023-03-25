programa
{
	funcao inicio()
	{
		/*Faça um programa para ler a temperatura
		se a temperatura for maior que 24º escreva 'Quente'
		se for >= 20º e <24º escreva 'Boa'
		se fo < 20º escreva 'Frio'
		*/
		real temperatura
		
		escreva("Digite o valor da temperatura: ")
		leia(temperatura)

		se(temperatura < 20)
			escreva("Frio")
		senao se (temperatura >= 20 e temperatura < 24)
			escreva("Boa")
		senao
			escreva("Quente")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 409; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */