programa
{
	
	funcao inicio()
	{
		inteiro A[3], B[3], C[3], valor
		cadeia linha1, linha2

		para(inteiro i = 0; i < 3; i++)
		{
			escreva("Informe um número: ")
			leia(valor)
			A[i] = valor
		}
		para(inteiro i = 0; i < 3; i++)
		{
			escreva("Informe um número: ")
			leia(valor)
			B[i] = valor
		}
		para(inteiro i = 0; i < 3; i++)
		{
			C[i] = A[i] + B[i]
		}
		escreva("Valores das somas "+ C[0] + C[0] + C[0])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */