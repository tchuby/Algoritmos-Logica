programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real celsius, fahrenheit
		
		escreva("Escreva a temperatura em Fahrenheit: ")
		leia(fahrenheit)
		celsius = Matematica.arredondar((5 * (fahrenheit -32)/9), 1)
		escreva("A temperatura equivale a ", celsius,"ºC.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */