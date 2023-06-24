programa
{
	
	funcao inicio()
	{
		inteiro vetor[10], entrada, multiplicacaoPares = 1, somaImpares = 0
		
		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Informe o " + (i+1) + "º número:")
			leia(entrada)
			vetor[i] = entrada 	
		}

		para(inteiro j = 0; j < 10; j++)
		{
			se(vetor[j] % 2 == 0)
			{
				multiplicacaoPares = multiplicacaoPares * vetor[j]
			}
			senao
			{
				somaImpares = somaImpares + vetor[j]
			}
		}

		escreva("Multiplicação dos elementos pares: " + multiplicacaoPares + ".\n")
		escreva("Soma dos elementos ímpares: " + somaImpares + ".")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 576; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */