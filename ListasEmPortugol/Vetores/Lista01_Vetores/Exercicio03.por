programa
{
	
	funcao inicio()
	{
		inteiro vetor[5], entrada, resto
		cadeia numerosPrimos = ""
		
		
		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Informe o " + (i+1) + "º número:")
			leia(entrada)
			vetor[i] = entrada
			logico ehPrimo = verdadeiro
			
			para(inteiro j = 2; j < entrada; j++)
			{
				resto = entrada % j
				se(resto == 0)
				{
					ehPrimo = falso
				}
			}
			
			se(ehPrimo e entrada > 1)
			{
				numerosPrimos = numerosPrimos + entrada + " "
			}
		}
		escreva("Os números primos do vetor informado são: [ " + numerosPrimos + "]")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 6, 10, 5}-{numerosPrimos, 7, 9, 13}-{ehPrimo, 15, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */