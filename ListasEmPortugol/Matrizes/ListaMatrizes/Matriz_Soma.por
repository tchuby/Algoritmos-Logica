programa
{
	
	funcao inicio()
	{
		//Leia duas matrizes 2x2 , como nome A e B
		// some as duas matrizes e coloque o resultado
		// em uma outra matriz de nome : soma

		inteiro A[2][2],B[2][2],soma[2][2],valor=0

		para (inteiro linhaA = 0; linhaA < 2; linhaA++)
		{
			para(inteiro colunaA = 0; colunaA < 2; colunaA++)
			{
				escreva("Informe um valor: ")
				leia(valor)
				A[linhaA][colunaA]=valor
			}	
		}
		
		limpa()
		
		para (inteiro linhaB = 0; linhaB < 2; linhaB++)
		{
			para(inteiro colunaB = 0; colunaB < 2; colunaB++)
			{
				escreva("Informe um valor: ")
				leia(valor)
				B[linhaB][colunaB]=valor
			}	
		}

		limpa()

		para (inteiro linha = 0; linha < 2; linha++)
		{
			para(inteiro coluna=0;coluna<2;coluna++)
			{
				soma[linha][coluna]=A[linha][coluna] + B[linha][coluna]
			}	
		}

		para(inteiro i = 0; i < 2; i++)
		{
			escreva("Elementos da linha " + i + ": [" + soma[i][0] + " ; " + soma[i][1] + "]\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 813; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {A, 10, 10, 1}-{B, 10, 18, 1}-{soma, 10, 26, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */