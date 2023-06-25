programa
{
	
	funcao inicio()
	{

		inteiro matriz[2][2],valor=0
		
		para (inteiro linha = 0; linha < 2; linha++)
		{
			para (inteiro coluna = 0; coluna < 2 ; coluna++)
			{
				escreva("Informe um valor para a o elemento da linha " + linha + 
				" e coluna " + coluna + " da matriz: \n")
				leia(valor)
				matriz[linha][coluna]=valor
			}
		}
		
		escreva("Os elementos formam a matriz: \n")
		para(inteiro i = 1; i >= 0; i--)
		{
			escreva("[" + matriz[i][0] + " ; " + matriz[i][1] + "]\n")
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 383; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */