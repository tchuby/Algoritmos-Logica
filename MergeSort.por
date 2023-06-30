programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetor[10] = { 43, 89, 13, 22, 88, 27, 30, 93, 12, 5 },
			   elementos = 0, 
			   vetor2A[5], 
			   vetor2B[5],
			   vetor3A[3],
			   vetor3B[2],
			   vetor3C[3],
			   vetor3D[2],
			   vetor4
		
		elementos = u.numero_elementos(vetor)

		para(inteiro i = 0; i < elementos/2; i++)
		{
			vetor2[i] = vetor[i]	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */