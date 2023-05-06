programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		real PAG
		inteiro HE, ME, HS, MS, minutosDecorridos, horasCheias = 0
		
		escreva("Saiba quanto pagar pelo estacionamento.")
		u.aguarde(1000)
		limpa()

		escreva("Digite a hora de entrada: \n")
		leia(HE)
		
		escreva("Digite os minutos da entrada: \n")
		leia(ME)
		
		escreva("Digite a hora da saída: \n")
		leia(HS)
		
		escreva("Digite os minutos da saída: \n")
		leia(MS)
		limpa()
		
		//Considerando entrada e saída no mesmo dia.
		minutosDecorridos = ((HS * 60) - (HE * 60)) + (MS - ME)
		
		enquanto(minutosDecorridos > 0){
			minutosDecorridos = minutosDecorridos - 60
			horasCheias++
		}

		se(horasCheias == 1)
		{
			escreva("O valor a ser pago é de: R$4,00")
		}
		senao
		{
			se(horasCheias == 2)
			{
				escreva("O valor a ser pago é de: R$6,00")
			}
			senao
			{
				PAG = 6.0 + (horasCheias - 2)
				escreva("O valor a ser pago é de: R$" + PAG)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {PAG, 8, 7, 3}-{HE, 9, 10, 2}-{ME, 9, 14, 2}-{HS, 9, 18, 2}-{MS, 9, 22, 2}-{minutosDecorridos, 9, 26, 17}-{horasCheias, 9, 45, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */