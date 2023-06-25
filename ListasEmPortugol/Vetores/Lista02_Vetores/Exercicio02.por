programa
{
	
	funcao inicio()
	{
		inteiro vetor[100]
		cadeia saida = ""
		
		para(inteiro i = 0; i < 100; i++)
		{
			vetor[i] = i + 1
		}
		
		para(inteiro j = 0; j < 100; j++)
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
 * @POSICAO-CURSOR = 236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */