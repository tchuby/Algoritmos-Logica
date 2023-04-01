programa
{
	
	funcao inicio()
	{
		inteiro anoAtual, anoNascimento, idade
		escreva("Informe o ano atual: ")
		leia(anoAtual)
		escreva("Informe o ano de nascimento: ")
		leia(anoNascimento)
		
		idade = anoAtual - anoNascimento

		se(idade >= 16)
			escreva("Pode Votar!")
		senao
			escreva("Não pode votar...")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 113; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */