programa
{
	
	funcao inicio()
	{
		real salario = 0.0, filhos = 0.0, somasal = 0.0, 
		sfilho = 0.0, maiorSalario = 0.0
		
		inteiro pessoas = 0, miseraveis = 0

		enquanto(salario >= 0.0)
		{
			escreva("Informe seu salário: \n")
			leia(salario)
			

				
			se(nao (salario == 0))
			{
				escreva("Informe o número de filhos: ")
				leia(filhos)
				
				somasal = somasal + salario
				
				sfilho = sfilho + filhos
				
				pessoas++
				
				se(salario > maiorSalario)
					maiorSalario = salario

				se(salario < 100)
					miseraveis++
			}
		}
		escreva("A média salarial é : ", somasal/pessoas, "\n")
		escreva("A média de filhos é: ", sfilho/pessoas, "\n")
		escreva("O maior salário é: ", maiorSalario, "\n")
		escreva(miseraveis + " é número de pessoas que "
				+ "recebem menos de R$100,00")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */