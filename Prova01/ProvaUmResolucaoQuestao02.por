programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		real notaUm = 0.0, notaDois = 0.0, media
		logico controle = verdadeiro

		escreva("Saiba a situação do aluno.")
		u.aguarde(2000)
		limpa()
		escreva("Utilize o '.' para separar as casas decimais!")
		u.aguarde(2000)
		limpa()

		enquanto(controle)
		{	
			escreva("Digite a primeira nota: \n")
			leia(notaUm)
			u.aguarde(1000)
			limpa()

			escreva("Digite a segunda nota: \n")
			leia(notaDois) 
			u.aguarde(1000)
			limpa()
		
			se(notaUm > 10 ou notaUm < 0 ou notaDois >10 ou notaDois < 0)
			{
				escreva("As notas devem estar no intervalo entre 0 e 10. \n")
				escreva("Por favor refaça a inserção das notas.")
				u.aguarde(3000)
				limpa()
			}
			senao{
				controle = falso
			}
			
		}
		
		media = (notaUm + notaDois) / 2

		se(media < 3)
		{
			escreva("Reprovado")
		}
		senao
		{
			se(media == 10)
			{
				escreva("Aprovado com distinção")
			}
			senao
			{
				se(media >=7 e media < 10)
				{
					escreva("Aprovado")
				}
				senao
				{
					escreva("Exame")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 499; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */