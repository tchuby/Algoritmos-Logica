programa
{
	
	funcao inicio()
	{
		inteiro primeiroNumero, segundoNumero

		escreva("Digite um número: ")
		leia(primeiroNumero)
		escreva("Digite outro número: ")
		leia(segundoNumero)
		se(primeiroNumero > segundoNumero)
			escreva("O maior é o ", primeiroNumero)
		senao se(primeiroNumero < segundoNumero)
			escreva("O maior é o ", segundoNumero)
		senao 
			escreva("Os números são iguais.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 401; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */