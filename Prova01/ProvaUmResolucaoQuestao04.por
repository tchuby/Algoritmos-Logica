programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		real PE, aPagar
		inteiro CP = 0
		logico controle = verdadeiro
		
		escreva("Saiba quanto pagar pelo produto.")
		u.aguarde(1000)
		limpa()

		escreva("Digite o preço mostrado na etiqueta do produto \n")
		leia(PE)
		
		enquanto(controle)
		{
			escreva("Dê a condição de pagamento: \n")
			escreva("1 - para pagamento à vista em dinheiro \n")
			escreva("2 - para pagamento à vista no cartão de crédito \n")
			escreva("3 - para parcelar em duas vezes \n")
			escreva("4 - para parcelar em 3 vezes \n")
			leia(CP)
			se(CP > 4 ou CP < 1)
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
		
		se(CP == 1){
			aPagar = PE * 0.9
			escreva("O valor a pagar será de: R$" + m.arredondar(aPagar,2))
		}
		senao{
			se(CP == 2){
				aPagar = PE * 0.95
				escreva("O valor a pagar será de: R$" + m.arredondar(aPagar,2))
			}
			senao{
				se(CP == 3){
					aPagar = PE
					escreva("O valor a pagar será de: R$" + m.arredondar(aPagar,2))
				}
				senao{
					aPagar = PE * 1.1
					escreva("O valor a pagar será de: R$" + m.arredondar(aPagar,2))
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
 * @POSICAO-CURSOR = 1242; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {PE, 8, 7, 2}-{aPagar, 8, 11, 6}-{CP, 9, 10, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */