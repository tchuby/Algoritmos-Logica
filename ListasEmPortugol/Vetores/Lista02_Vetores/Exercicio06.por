programa
{
	 
	funcao inicio()
	{
		inteiro vetor[500]
		cadeia saida = ""
		
		para(inteiro i = 0; i < 500; i++)
		{
			se((i % 5 == 0) e i != 0)
			{
				vetor[i] = i
				saida = saida +" "+ vetor[i]	
			}
			senao
			{
				vetor[i] = 0
			}
			
		}
		
		escreva(saida)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */