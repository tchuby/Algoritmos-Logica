programa
{
	
	funcao inicio()
	{
		inteiro vetor[100], contador = 0, numero = 0
		cadeia saida = ""
		logico controle = verdadeiro

		enquanto(controle)
		{
			se(numero % 2 == 1)
			{
				vetor[contador] = numero
				contador++
				se(contador == 100){
					controle = falso
				}
			}

			numero++
		}

		para(inteiro i = 0; i < 100; i++)
		{
			se(i % 10 != 0)
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
 * @POSICAO-CURSOR = 358; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */