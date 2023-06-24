programa
{
	
	funcao inicio()
	{
		inteiro vetor[10], entrada = 0, divisor = 0, resto = 0
		cadeia numerosDivisiveis = ""
		
		
		para(inteiro i = 0; i < 10; i++)
		{
			logico controle = verdadeiro
			
			enquanto(controle)
			{
				escreva("Informe o " + (i+1) + "º número:")
				leia(entrada)
				se(entrada > 0)
				{
					vetor[i] = entrada
					controle = falso
				}
				senao
				{
					escreva("O número deve ser inteiro e positivo. \n")	
				}
			}
		}

		escreva("Informe um valor inteiro positivo: ")
		leia(divisor)
		
		para(inteiro j = 0; j < 10; j++)
		{	
			resto = vetor[j] % divisor
		
			se(resto == 0)
			{
				numerosDivisiveis = numerosDivisiveis + vetor[j] + " "
			}
		}

		escreva("Valor informado: " + divisor + ". \n")
		escreva("Os números que são divisíveis por " + divisor +
			" são : " + numerosDivisiveis)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 6, 10, 5}-{entrada, 6, 21, 7}-{divisor, 6, 34, 7}-{resto, 6, 47, 5}-{numerosDivisiveis, 7, 9, 17};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */