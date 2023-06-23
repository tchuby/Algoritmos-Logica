programa
{
	
	funcao inicio()
	{
		inteiro matriz[5][5], adidas[5][5], valor = 0
		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++){
				escreva("Digite um valor ")
				leia(valor)
				matriz[i][j] = valor
			}
		}
		//Matris adidas vai receber os números da matriz
		 //original multiplicados por 2

		para(inteiro linha = 0; linha < 2; linha++)
		{
			para(inteiro coluna = 0; coluna < 2; coluna++)
			{
				adidas[linha][coluna] = matriz[linha][coluna] * 2
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */