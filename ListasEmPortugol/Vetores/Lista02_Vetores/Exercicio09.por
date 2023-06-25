programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro vetor[10], numeroTeste = 0, posicao = 0
		cadeia saida = ""

		enquanto(numeroTeste < 20)
		{
			se(numeroTeste !=0 e numeroTeste % 2 == 1)
			{
				vetor[posicao] = mat.potencia(numeroTeste, 2)
				posicao++
			}
			numeroTeste++
		}

		para(inteiro i = 0; i < 10; i++)
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
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 7, 10, 5}-{numeroTeste, 7, 21, 11}-{posicao, 7, 38, 7}-{saida, 8, 9, 5}-{i, 20, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */