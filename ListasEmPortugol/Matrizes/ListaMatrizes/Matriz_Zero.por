programa
{
	// crie duas matrizes uma A e outra B 4x4
     // leia valores para a matriz A
     // crie a matriz B com o valor ZERO onde a linha for
     // igual a coluna e onde não for multiplquee a original 
     // por 2
	
	funcao inicio()
	{
		inteiro A[4][4],B[4][4], valor = 0

		para(inteiro i = 0; i < 4; i++)
		{
			para(inteiro j = 0; j < 4; j++)
			{
				escreva("Digite um valor")
				leia(valor)
				A[i][j] = valor 
			}
		}

		para(inteiro l = 0; l < 4; l++)
		{
			para(inteiro c = 0; c < 4; c++)
			{
				se(c == l){
					B[l][c] = 0
				}
				senao
				{
					B[l][c] = (A[l][c] * 2)
				}
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 266; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {A, 11, 10, 1}-{B, 11, 18, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */