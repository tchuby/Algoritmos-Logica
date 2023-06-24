programa
{
	
	funcao inicio()
	{
		inteiro vetorEntrada[5], vetorSaida[5], entrada
		cadeia vetorInformado = "", vetorInvertido = ""
		
		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Informe o " + ( i + 1) + "º número: ")
			leia(entrada)
			vetorEntrada[i] = entrada
			
		}

		vetorSaida[0] = vetorEntrada[4]
		vetorSaida[1] = vetorEntrada[3]
		vetorSaida[2] = vetorEntrada[2]
		vetorSaida[3] = vetorEntrada[1]
		vetorSaida[4] = vetorEntrada[0]

		para(inteiro i = 0; i < 5; i++)
		{
			vetorInformado = vetorInformado + " " + vetorEntrada[i]
			vetorInvertido = vetorInvertido + " " + vetorSaida[i]	
		}	

		escreva("Vetor informado: [" + vetorInformado + " ]; \n")
		escreva("Vetor invertido: [" + vetorInvertido + " ].")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 737; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */