programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro idade
		cadeia continue
		logico controle = verdadeiro
		
		escreva("Digite a idade e saiba o valor da mensalidade do plano.")
		
		enquanto(controle)
		{ 
			u.aguarde(1000)
		     limpa()
			escreva("Digite a idade do segurado: ")
			leia(idade)
			u.aguarde(1000)
			limpa()
				
			se(idade < 10)
			{
				escreva("Até 10 anos o preço do plano é de R$ 30,00 \n")
			}
			senao
			{
				se(idade >= 59)
				{
					escreva("Acima de 59 anos o preço do plano é de R$ 300,00 \n")
				}
				senao
				{
					se(idade >= 10 e idade <29)
					{
						escreva("Acima de 10 até 29 anos o preço do plano é de R$ 60,00 \n")
					}
					senao
					{
						se(idade >= 29 e idade < 45)
						{
							escreva("Acima de 29 até 45 anos o preço do plano é de R$ 120,00 \n")
						}
						senao
						{
							escreva("Acima de 45 até 59 anos o preço do plano é de R$ 150,00 \n")
						}
					}
				}
			}
			
			escreva("\nDeseja fazer uma nova consulta? \n")
			escreva("Digite S, para sair ou qualquer outra tecla para continuar. \n")
			leia(continue)
			se(continue == "S" ou continue == "s")
				controle = falso
				escreva("Até a próxima.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1206; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */