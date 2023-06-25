programa
{
	 
	funcao inicio()
	{
		inteiro vetor[50], posicao = 0
		cadeia saida = ""
		
		para(inteiro i = 1; i < 101; i++)
		{
			se(i % 2 == 0)
			{
				vetor[posicao] = i
				posicao++	
			}
		}
		para(inteiro j = 0; j < 50; j++)
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
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 6, 10, 5}-{saida, 7, 9, 5}-{i, 9, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */