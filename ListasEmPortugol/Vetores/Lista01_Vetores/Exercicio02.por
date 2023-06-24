programa
{
	
	funcao inicio()
	{
		inteiro vetor[10], soma, entrada, somatorio = 0 
		cadeia saida = "["

		para(inteiro i = 0; i < 10; i++){
			escreva("Informe o " + (i+1) + "º número.")
			leia(entrada)
			vetor[i] = entrada
			somatorio = somatorio + vetor[i]
		}

		para(inteiro j = 0; j < 10; j++){
			saida = saida + " " + vetor[j]
		}

		escreva("A soma dos valores do vetor é: " + somatorio +". \n")
		escreva("vetor - " + saida + " ]")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */