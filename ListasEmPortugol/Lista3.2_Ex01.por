programa
{
	
	funcao inicio()
	{
		inteiro negativos = 0, numeroEntrada
		cadeia numeros = ""
		
		para(inteiro n = 1; n < 6; n++)
			{
				escreva("Digite um o " + n + "º número: \n")
				leia(numeroEntrada)
				se(numeroEntrada < 0)
				{
					negativos++
					numeros = numeros + numeroEntrada + " "
				}	
			}
		escreva("" + negativos + " números digitados são negativos: {" + numeros + "}.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {negativos, 6, 10, 9}-{numeroEntrada, 6, 25, 13}-{numeros, 7, 9, 7}-{n, 9, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */