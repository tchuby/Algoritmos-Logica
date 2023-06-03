programa
{
	
	funcao inicio()
	{
		inteiro A[4], numero
		
		para(inteiro chave = 0; chave < 4; chave++)
		{
			escreva("Informe um número")
			leia(numero)
			A[chave] = numero
		}
		limpa()

		para(inteiro chave = 0; chave < 4; chave++)
		{
			escreva(A[chave],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */