programa
{
	
	funcao inicio()
	{
		real vetor[10], numeroEntrada
		cadeia saida = ""

		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Informe o " + (i + 1) + "º número: \n")
			leia(numeroEntrada)

			vetor[i] = numeroEntrada / 2
		}

		para(inteiro j = 0; j < 10; j++)
		{
			se(j < 9 ){
				saida = saida + " " + vetor[j] + ";"
			}
			senao
			 saida = saida + " " + vetor[j] 
		}
		escreva("As metades dos valores informados são: [" + saida + " ]")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */