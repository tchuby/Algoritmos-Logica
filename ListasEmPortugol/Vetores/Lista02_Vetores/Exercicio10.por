programa
{
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro vetor[50], numeroTeste = 1, posicao = 0
		cadeia saida = ""

		enquanto(numeroTeste < 100)
		{
			se(numeroTeste % 2 == 1)
			{
				vetor[posicao] = numeroTeste
				posicao++
			}
			numeroTeste++
		}

		para(inteiro i = 0; i < 50; i++)
		{
			saida = saida + " " + vetor[i]
		}
		escreva(saida)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */