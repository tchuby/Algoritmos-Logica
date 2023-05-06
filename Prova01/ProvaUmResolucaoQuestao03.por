programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		real VG, CT
		cadeia TC = ""
		logico controle = verdadeiro

		escreva("Saiba o valor gasto para encher o tanque.")
		u.aguarde(1000)
		limpa()

		enquanto(controle)
		{
			escreva("Qual o tipo do carro? \n")
			escreva("G para gasolina ou A para álcool. \n")
			leia(TC)
			limpa()
			se(TC != "A" e TC != "G"){
				escreva("Tipo de carro inválido. \n")
			}
			senao{
				controle = falso
			}
		}

		escreva("Qual a capacidade do tanque em litros? \n")
		leia(CT)
		limpa()
		
		se(TC == "A")
		{
			VG = 1 * CT
		}
		senao
		{
			VG = 1.8 * CT
		}

		escreva("O valor gasto para encher o tanque do carro é de: R$" + m.arredondar(VG,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 559; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */