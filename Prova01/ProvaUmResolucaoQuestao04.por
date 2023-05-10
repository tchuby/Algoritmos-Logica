programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		logico controle = verdadeiro
		cadeia continue
		
		escreva("Saiba quanto pagar pelo produto.")
		u.aguarde(2000)
		limpa()
		
		escreva("Utilize o '.' para separar as casas decimais!")
		u.aguarde(2000)
		limpa()

		enquanto(controle)
		{
			calcularPagamento()
			u.aguarde(2000)
			
			escreva("\nDeseja consultar outro preço?")
			escreva("\nDigite 'S' para sair, ou qualquer outra tecla para continuar.")
			leia(continue)
			u.aguarde(2000)
			limpa()
			se(continue == "S" ou continue == "s")
				controle = falso
		}
	}
	funcao calcularPagamento()
	{
		real PE, aPagar
		inteiro CP = 0
		
		escreva("Digite o preço mostrado na etiqueta do produto \n")
		leia(PE)
		u.aguarde(1000)
		limpa()
		
		CP = mostrarCondicoesPagamento()
		
		se(CP == 1)
		{
			aPagar = PE * 0.9
		}
		senao
		{
			se(CP == 2)
			{
				aPagar = PE * 0.95
			}
			senao
			{
				se(CP == 3)
				{
					aPagar = PE
				}
				senao
				{
					aPagar = PE * 1.1
				}
			}
		}
		
		mostrarResultado( CP, aPagar )
	}

	funcao inteiro mostrarCondicoesPagamento()
	{
		logico controle = verdadeiro
		inteiro condicaoPagamento = 0
		
		enquanto(controle)
		{
			escreva("Dê a condição de pagamento: \n")
			escreva("1 - para pagamento à vista em dinheiro \n")
			escreva("2 - para pagamento à vista no cartão de crédito \n")
			escreva("3 - para parcelar em duas vezes \n")
			escreva("4 - para parcelar em 3 vezes \n")
			
			leia(condicaoPagamento)
			
			se(condicaoPagamento > 4 ou condicaoPagamento < 1)
			{
				escreva("Opção inválida. \n")
				u.aguarde(1000)
				limpa()
			}
			senao
			{
				controle = falso
				limpa()
			}
		}
		
		retorne condicaoPagamento
	}

	funcao mostrarResultado(inteiro CP, real aPagar)
	{
		se(CP == 4)
			escreva("O valor a pagar será de: R$" + m.arredondar(aPagar,2)
				+ " em três parcelas de: R$" + m.arredondar((aPagar/3),2))		
		senao se(CP == 3)
			escreva("O valor a pagar será de: R$" + m.arredondar(aPagar,2)
				+ " em duas parcelas de: R$" + m.arredondar((aPagar/2),2))	
		senao
			escreva("O valor a pagar será de: R$" + m.arredondar(aPagar,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 621; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */