programa
{
	
	funcao inicio()
	{
		inteiro vetor[8], valor =0, maior = 0, posicao = 0
		
		escreva("Digite 8 números para preencher o vetor\n")

		para(inteiro indice = 0; indice < 8; indice++){
			
			escreva("Informe o " + (indice + 1) + "º valor: \n")
			leia(valor)
			vetor[indice] = valor
			
			se(indice == 0){
				maior = valor
			}
			senao se (maior < valor){
				maior = valor
				posicao = indice
			}
				
			
			limpa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor, 6, 20, 5}-{maior, 6, 30, 5}-{indice, 10, 15, 6}-{posicao, 6, 41, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */