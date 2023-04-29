programa
{
	inclua biblioteca Util --> util
	
	funcao inicio()
	{
		imprimirMenoresQueDez()
		imprimirMenoresQueDezDecrescente()
		tabuadaOito()
		tabuadaDois()
		tabuadaN()
	}

	funcao imprimirMenoresQueDez()
	{
		/*
		 *exercicio 01 
		*/
		
		inteiro n = 1
		enquanto(n<=10)
		{
			escreva(n, " ")
			n++
		}
		escreva("\n")
		escreva("\n")
	}

	funcao imprimirMenoresQueDezDecrescente()
	{
		/*
		 * exercício 02
		*/
		inteiro n = 10, i = 0
		inteiro ns[10]
		
		enquanto(n > 0)
		{
			ns[i] = n
			i++
			n--
		}
		para (inteiro j = 0; j < 10; j++)
		{
			escreva(ns[j], " ")
		} 

		escreva("\n")
		escreva("\n")
	}

	funcao tabuadaOito()
	{
		inteiro n = 0
		enquanto(n <= 10)
		{
			escreva( "8 x ",n, " é igual a: ",n * 8, "\n")
			n++
		}
		escreva("\n")
	}

	funcao tabuadaDois()
	{
		inteiro n = 0
		enquanto(n <= 10)
		{
			escreva("2 x ", n, " é igual a: ", n * 2, "\n")
			n++
		}
		escreva("\n")
	}

	funcao tabuadaN()
	{
		inteiro fator
		logico controleFluxo = verdadeiro
		
		escreva("Digite um número de 1 a 10 para saber sua tabuada \n")
		leia(fator)
		enquanto(controleFluxo)
		{
			se(fator < 1 ou fator > 10)
			{
				escreva("O número de estar dentro do intervalo de 1 a 10, "
						+ " digite novamente: \n")
				leia(fator)
			}
			senao{
				para(inteiro n = 1; n <= 10; n++)
				{
					escreva(fator," x ", n, " é igual a: ", fator * n, "\n")
				}
				
				controleFluxo = falso
			}
		}
	}

	funcao ordenarCrescente()
	{
		inteiro quantidadeNumeros
		escreva("Digite diversos números separados por espaço"
		       + " e receba-os"
			  + " ordenados de forma crescente.")
		
	}

	funcao cadeia transformarVetorEmCadeia(inteiro int[])
	{
		cadeia resultado = ""
		
		retorne resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1421; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 35, 10, 1}-{i, 35, 18, 1}-{ns, 36, 10, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */