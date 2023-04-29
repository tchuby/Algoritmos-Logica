programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		escreva("Olá Mundo \n")
		exibirValorDeVenda()
		determinarTipoDeTriangulo()
		informarSeHaveraSegundoTurno()
		calcularSalario()
		informarConsumoEstimadoDeCombustivel()
	}
	
	funcao exibirValorDeVenda(){
		real valorCompra, valorVenda
		escreva("Dê o valor de compra e saiba o valor de venda: \n")
		
		escreva("Digite o valor de compra: \n")
		leia(valorCompra)

		se(valorCompra < 200.00)
			valorVenda = valorCompra * 1.5
		senao
			valorVenda = valorCompra * 1.3

		escreva("O valor de venda é de: R$" 
				+ Matematica.arredondar(valorVenda, 2) + ".\n") 
	}

	funcao determinarTipoDeTriangulo(){
		real ladoUm, ladoDois, ladoTres
		
		escreva("Dê os lados do triangulo e saiba seu tipo: \n")
		
		escreva("Digite o primeiro lado: \n")
		leia(ladoUm)
		
		escreva("Digite o segundo lado: \n")
		leia(ladoDois)
		
		escreva("Digite o terceiro lado: \n")
		leia(ladoTres)	

		se(((ladoUm + ladoDois) < ladoTres) 
			ou ((ladoDois + ladoTres) < ladoUm)
			ou ((ladoTres + ladoUm) < ladoDois)){
				escreva("Os lados não formam um triângulo.\n")
		}
		senao se(ladoUm == ladoDois 
				ou ladoUm == ladoTres 
				ou ladoDois == ladoTres){
				escreva("O triângulo é isosceles.\n")
		}
		senao se(ladoUm == ladoDois e ladoDois == ladoTres){
				escreva("O triãngulo é equilátero.\n")
		}
		senao
			escreva("O triângulo é escaleno.\n")
	}

	funcao informarSeHaveraSegundoTurno(){
		cadeia nomeMunicipio
		inteiro quantidadeEleitores, quantidadeVotos
		real percentualVotos
		cadeia resultadoEleicoes
		
		escreva("Saiba se haverá segundo turno: \n")
		
		escreva("Escreva o nome do município: \n")
		leia(nomeMunicipio)
		
		escreva("Digite a quantidade de eleitores: \n")
		leia(quantidadeEleitores)
		
		escreva("Digite a quantidade de votos no "
				+ "candidato mais votado: \n")
		leia(quantidadeVotos)

		percentualVotos = quantidadeEleitores / quantidadeVotos

		se(quantidadeEleitores < 200000 ou percentualVotos > 0.5)
			resultadoEleicoes = " não haverá"
		senao
			resultadoEleicoes = " haverá"	

		escreva("No município de " 
				+ nomeMunicipio 
				+ resultadoEleicoes
				+ " segundo turno. \n")
	}

	funcao calcularSalario(){
		real salarioBruto, salarioLiquido
		escreva("Digite o salário bruto: \n")
		leia(salarioBruto)

		se(salarioBruto < 2000)
			salarioLiquido = salarioBruto * 0.9
		senao
			salarioLiquido = salarioBruto * 0.8
			
		escreva("O salário líquido é de: R$"
				+ salarioLiquido + ".\n")	
	}

	funcao informarConsumoEstimadoDeCombustivel(){
		cadeia tipoCarro
		real percurso, consumo
		escreva("Saiba o consumo estimado de combustível: \n")
		escreva("Digite em quilômetros o percuso: \n")
		leia(percurso)
		
		escreva("Qual o tipo do carro? (A, B ou C) \n")
		leia(tipoCarro)
		
		se(tipoCarro != "A" e tipoCarro != "B" e tipoCarro != "C")
			escreva("Tipo de carro inválido!")
		senao{
			se(tipoCarro == "A")
				consumo = percurso / 8
			senao se(tipoCarro == "B")
				consumo = percurso / 9
			senao
				consumo = percurso / 12
		}

		escreva("O consumo estimado para o percuso foi de: " 
				+ consumo 
				+ " litros de combustível.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3151; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */