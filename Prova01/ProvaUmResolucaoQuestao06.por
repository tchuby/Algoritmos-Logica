programa
{
	//Este algorítimo serve para validar uma data, se ela se enquadra no padrão de datas do 
	//calendário Juliano. Validando os valores para dia mês e ano.
	// O Erro está na data de último dia para o mês de fevereiro poir aceita o dia 29 para 
	// os anos não bissextos
	
	funcao inicio()
	{
		inteiro mes, dia, ano
		escreva("\ndigite o dia: ")
		leia(dia)

		escreva("\ndigite o mes: ")
		leia(mes)

		escreva("\ndigite o ano: ")
		leia(ano)

		se(mes <= 0 ou mes >12 ou ano <=0){
			escreva("\nData inválida")
		}
		senao 
		{
 			inteiro ultimoDia
 			se (mes == 2) 
 			{
 				ultimoDia = 29
 			} 
 			senao se (mes == 1 ou mes == 3 ou mes == 5 ou mes == 7 ou mes == 8 ou mes == 10 ou mes == 12)
 			{
 				ultimoDia = 31
 			} 
 			senao
 			{
 				ultimoDia = 30
 			}
 			se (dia <= 0 ou dia > ultimoDia) 
 			{
 				escreva("\nData inválida!")
 			} 
 			senao 
 			{
 				escreva("\nData válida!")
 			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 886; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */