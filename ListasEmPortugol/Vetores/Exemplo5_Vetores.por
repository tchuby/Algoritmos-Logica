programa
{
	
	funcao inicio()
	{
		//multiplicar os valores do vetor;

		real vetor[3], valor = 0.0, montante = 0.0
		
		para(inteiro i = 0; i < 3; i++)
		{
			escreva("Digite um valor: ")
			leia(valor)
			vetor[i] = valor
		}
		
		limpa()

		para(inteiro j = 0; j < 3; j++)
		{
			montante = montante * vetor[j]
		}
		
		escreva("O montante da multiplicação dos valores do vetor é: ", montante)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */