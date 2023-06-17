programa
{	
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro A[5], B[5], C[5], valor = 0
		logico controle = verdadeiro
		
		escreva("Preencha os vetores de 5 posições A e B \n")
		
		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Digite o " + (i+1) 
					+ "º número do vetor A: \n")
					
			leia(valor)
			A[i] = valor
			limpa()
		}
		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Digite o " + (i+1) 
					+ "º número do vetor B: \n")
			leia(valor)
			B[i] = valor
			limpa()
		}
		
		enquanto(controle)
		{
			escolha(painel())
			{
				caso 1:
					para(inteiro i = 0; i < 5; i++){
					C[i] = A[i] + B[i]
					}
					limpa()
					escreva("Opção 1 - Soma\n")
					imprimeC(C)
					pare
				
				caso 2:
					para(inteiro i = 0; i < 5; i++){
					C[i] = A[i] - B[i]
					}
					limpa()
					escreva("Opção 2 - Subtração\n")
					imprimeC(C)
					pare
				
				caso 3:
					para(inteiro i = 0; i < 5; i++){
					C[i] = A[i] * B[i]
					}
					limpa()
					escreva("Opção 3 - Multiplicação\n")
					imprimeC(C)
					pare
				
				caso 4:
					para(inteiro i = 0; i < 5; i++){
					C[i] = A[i] / B[i]
					}
					limpa()
					escreva("Opção 4 - Divisão\n")
					imprimeC(C)
					pare
					
				caso 5:
					controle = falso
					escreva("Encerrando o programa...")
					u.aguarde(1000)
					limpa()
					pare
			}
		}
	}

	funcao inteiro painel(){
		inteiro itemEscolhido = 0
		logico controle = verdadeiro

		escreva("Escolha uma operação: \n"
			   + "1- Soma\n"
			   + "2- Subtração\n"
			   + "3- Multiplicação\n"
			   + "4- Divisão\n"
			   + "5- Encerra\n")
		enquanto(controle)
		{
			leia(itemEscolhido)
			se(itemEscolhido > 5 ou itemEscolhido < 1)
			{
				escreva("Escolha um número entre 1 e 5")
			}
			senao
			{
				controle = falso	
			}
		}
		limpa()
		retorne itemEscolhido
	}

	funcao imprimeC(inteiro C[]){
		cadeia saida = ""
		para(inteiro i = 0; i < 5; i++){
			 saida = saida + " " + C[i]
		}
		escreva("C =" + saida + ".\n")
		escreva("______________________\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2011; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */