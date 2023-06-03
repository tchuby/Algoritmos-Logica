programa
{
	
	funcao inicio()
	{
		inteiro A[4], numero
		
		para(inteiro chaveIn = 0; chaveIn < 4; chaveIn++)
		{
			escreva("Informe um número")
			leia(numero)
			A[chaveIn] = numero
		}
		limpa()

		para(inteiro chaveOut = 3; chaveOut > -1; chaveOut--)
		{
			escreva(A[chaveOut],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */