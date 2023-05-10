programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		real PAG
		inteiro HE = 0, ME = 0, HS = 0, MS = 0, minutosDecorridos, horasCheias = 0
		logico controle = verdadeiro
		
		escreva("Saiba quanto pagar pelo estacionamento.")
		u.aguarde(2000)
		limpa()
		
		escreva("Considere o formato de 24h e que a entrada e a saída são no mesmo dia!")
		u.aguarde(3000)
		limpa()
		
		enquanto(controle)
		{
			escreva("Digite a hora de entrada: \n")
			HE = validarHoras()
		
			escreva("Digite os minutos da entrada: \n")
			ME = validarMinutos()
		
			escreva("Digite da hora da saída: \n")
			HS = validarHoras()
		
			escreva("Digite os minutos da saída: \n")
			MS = validarMinutos()

			se((HS < HE) ou (HS == HE e MS <= ME))
			{
				escreva("O horário de saída não pode ser menor ou igual ao de entrada, "
				+ "entre com os dados novamente.")
				u.aguarde(3000)
				limpa()
			}
			senao
			{
				controle = falso
			}
		}
		
		//Considerando entrada e saída no mesmo dia.
		minutosDecorridos = ((HS * 60) - (HE * 60)) + (MS - ME)
		
		enquanto(minutosDecorridos > 0){
			minutosDecorridos = minutosDecorridos - 60
			horasCheias++
		}

		se(horasCheias == 1)
		{
			PAG = 4.0
		}
		senao
		{
			se(horasCheias == 2)
			{
				PAG = 6.0
			}
			senao
			{
				PAG = 6.0 + (horasCheias - 2)
			}
		}

		escreva("O valor devido é de: R$" + PAG)
	}
	
	funcao inteiro validarHoras()
	{
		inteiro hora = 0
		logico controle = verdadeiro
		enquanto(controle)
		{
			leia(hora)
		
			se(hora > 23 ou hora < 0)
				escreva("Horas deve ser um valor inteiro entre 0 e 23 \nDigite novamente: ")
			senao
				controle = falso
		}
		u.aguarde(1000)
		limpa()
		retorne hora
	}
	
	funcao inteiro validarMinutos()
	{
		inteiro minutos = 0
		logico controle = verdadeiro
		enquanto(controle)
		{
			leia(minutos)
		
			se(minutos > 59 ou minutos < 0)
				escreva("Minutos deve ser um valor inteiro entre 0 e 59 \nDigite novamente: ")
			senao
				controle = falso
		}
		u.aguarde(1000)
		limpa()
		retorne minutos
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 890; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */