programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		/*
		 * Ler o salário fixo e o valor das vendas
		 * eftuadas pelo vendedor de uma empresa. 
		 * Sabendo-se que ele recebe ua comissão de 
		 * 
		*/
		real salarioFinal, salarioBase, totalVendas
		
		escreva("Informe o seu salário: ")
		leia(salarioBase)
		escreva("Informe o valor das suas vendas: ")
		leia(totalVendas)

		se(totalVendas <= 1500)
			salarioFinal = salarioBase + (totalVendas * 3/ 100)
		senao
			salarioFinal = salarioBase + 
							((totalVendas - 1500) * 5/ 100) +
							(1500 * 3/ 100)
			
		escreva("O salário do funcionário é de: R$ ", Matematica.arredondar(salarioFinal, 2))		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 631; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */