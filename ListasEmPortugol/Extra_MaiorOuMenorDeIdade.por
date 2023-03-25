programa
{
	
	funcao inicio()
	{
		inteiro idade
		
		escreva("Informe sua idade: ")
		leia(idade)
		se(idade>=60)
		{
			escreva("Idoso")
		}
		senao se(idade >= 18 e idade < 60)
		{
			escreva("Adulto")
		}
		senao se(idade < 18 e idade > 12)
		{
			escreva("Adolescente")	
		}
		senao
		{
			escreva("Criança")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 326; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */