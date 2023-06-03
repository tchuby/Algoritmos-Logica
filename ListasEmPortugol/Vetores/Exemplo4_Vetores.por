programa
{
	
	funcao inicio()
	{
		real vetor[3], valor = 0.0, soma = 0.0
		
		para(inteiro i = 0; i < 3; i++)
		{
			escreva("Digite um valor: ")
			leia(valor)
			vetor[i] = valor
		}
		
		limpa()

		para(inteiro j = 0; j < 3; j++)
		{
			soma = soma + vetor[j]
		}
		
		escreva("A soma dos valores do vetor é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */