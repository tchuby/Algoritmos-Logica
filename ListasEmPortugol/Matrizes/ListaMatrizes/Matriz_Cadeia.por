programa
{
	
	funcao inicio()
	{
		// crie uma algoritmo que crie uma matriz
		// como o nome patchon 4x4
		// nas linhas pares será preechido com "Chopps"
		// nas linhas impares "Torresmo"

		cadeia patchon[4][4]

		para(inteiro linha=0;linha<4;linha++)
		{
			para(inteiro coluna=0;coluna<4;coluna++)
			{
					se(linha%2==0)
					{
						patchon[linha][coluna]="Chopps"
					}
					senao
					{
						patchon[linha][coluna]="Torresmo"
					}
			}
		}
		para(inteiro i = 0; i < 4; i++)
		{
			escreva("Elementos da linha " + i + ": [" + patchon[i][0] + " ; " + patchon[i][1] +
			" ; " + patchon[i][2] + " ; " + patchon[i][3] + "]\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 580; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {patchon, 11, 9, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */