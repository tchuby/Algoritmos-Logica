programa
{
	
	funcao inicio()
	{
		inteiro vetor[101]
		cadeia saida = ""
		
		para(inteiro i = 0; i < 101; i++)
		{
			vetor[i] = 100 + i
		}
		
		para(inteiro j = 0; j < 101; j++)
		{
			saida = saida +" "+ vetor[j]
		}
		escreva(saida)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 238; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */