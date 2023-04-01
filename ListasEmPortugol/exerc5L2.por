programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		/*
		 * ler as notas da 1a e 2a avaliações de um aluno.
		 * Calcular a média se >= 6 aprovado
		 * entre 4 e 6 exame
		 * menor que 4 reprovado
		*/
		real primeiraNota, segundaNota, mediaFinal
		
		escreva("Digite a primeira nota do aluno: ")
		leia(primeiraNota)
		escreva("Digite a segunda nota do aluno: ")
		leia(segundaNota)
		
		mediaFinal = Matematica.arredondar(((primeiraNota + 
			segundaNota) / 2), 2)

		se(mediaFinal < 4)
			escreva("Aluno reprovado com média: ", mediaFinal)
		senao se (mediaFinal >= 6)
			escreva("Aluno aprovado com média: ", mediaFinal)
		senao
			escreva("Aluno está em exame com média: ", mediaFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 506; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */