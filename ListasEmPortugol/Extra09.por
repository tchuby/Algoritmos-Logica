programa
{
	
	funcao inicio()
	{
		/*
		 * Crie um programa para ler duas notas
		 * ler a frequência
		 * calcule a média
		 * se media >= 7 e frequência >= 75 - output aprovado
		 * se media <7 e media >=5 e frequência >= 75 - exame
		 * se media <7 e >=5 e frequencia <=75 - reprovado
		 * se media <5 reprovado
		*/
		real primeiraNota, segundaNota, media, frequencia

		escreva("Escreva a primeira nota do aluno: ")
		leia(primeiraNota)

		escreva("Escreva a segunda nota do aluno: ")
		leia(segundaNota)

		escreva("Escreva a frequência do aluno: ")
		leia(frequencia)

		media = (primeiraNota + segundaNota) / 2

		se(media < 5 ou frequencia < 75)
			escreva("Reprovado")
		senao se (media >= 7)
			escreva("Aprovado")
		senao
			escreva("Exame")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 765; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {media, 15, 34, 5}-{frequencia, 15, 41, 10}-{segundaNota, 15, 21, 11}-{primeiraNota, 15, 7, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */