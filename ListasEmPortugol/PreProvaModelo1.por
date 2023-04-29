programa
{
	//Pre prova Modelo 1
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		escreva("Olá Mundo \n")
		calcularMediaESituacaoFinalDoAluno()
		calcularDinheiroGastoPorFumante()
		gerarPrecoFinalDeCarro()
		escreverNumerosEmOrdemCrescente()
		determinarOMaior()
	}
	
	funcao calcularMediaESituacaoFinalDoAluno(){
		real primeiraNota, segundaNota, terceiraNota, media, frequencia
		
		escreva("Descubra a situação do aluno escrevendo suas" +
		" notas e frequência: \n")

		escreva("Digite a primeira nota do aluno: ")
		leia(primeiraNota)
		
		escreva("Digite a segunda nota do aluno: ")
		leia(segundaNota)
		
		escreva("Digite a terceira nota do aluno: ")
		leia(terceiraNota)
		
		escreva("Digite o percentual da frequência do aluno: ")
		leia(frequencia)

		media = (primeiraNota + segundaNota + terceiraNota) / 3
		
		se(media < 5.00 ou frequencia < 75){
			escreva("Aluno reprovado com nota " 
				   	+ Matematica.arredondar(media,2)
				  	+ " e frequência: "
				   	+ Matematica.arredondar(frequencia, 2)
				   	+ "%.\n")
		}
		senao se(media >= 5 ou media < 7){
			escreva("Aluno em recuperação com média: "
					+ Matematica.arredondar(media, 2)
					+ " e frequência: "
					+ Matematica.arredondar(frequencia, 2)
					+ "%.\n")
		}
		senao{
			escreva("Aluno aprovado com média: "
					+ Matematica.arredondar(media, 2)
					+ " e frequência: "
					+ Matematica.arredondar(frequencia, 2)
					+ "%.\n")
		}
	}

	funcao calcularDinheiroGastoPorFumante(){
		inteiro anos, quantidadeCigarrosDia, quantidadeCigarros
		real precoCarteiraCigarros, quantidadeDinheiro
		
		escreva("Saiba quanto dinheiro o porcão gastou com"
				+ " cigarros em sua vida.\n")
				
		escreva("Digite o período de anos em que o sujeito fumou: ")
		leia(anos)

		escreva("Digite a quantidade de cigarros fumados por dia: ")
		leia(quantidadeCigarrosDia)

		escreva("Digite o valor médio de uma carteira de cigarros: ")
		leia(precoCarteiraCigarros)

		quantidadeCigarros = 365 * anos * quantidadeCigarrosDia
		
		quantidadeDinheiro = quantidadeCigarros * precoCarteiraCigarros / 20
						
		
		escreva("O porcão fumou durante "
				+ anos
				+ " anos um total de "
				+ quantidadeCigarros 
				+ " cigarros e ficou R$"
				+ Matematica.arredondar(quantidadeDinheiro, 2) 
				+ " mais pobre.\n")
	}

	funcao gerarPrecoFinalDeCarro(){
		real custoFabrica, valorVenda, valorImposto, valorLucro
		escreva("Saiba o valor de venda ao consumidor de um carro: \n")
		escreva("Entre com o custo de fábrica do carro: ")
		leia(custoFabrica)

		valorImposto = custoFabrica * 0.45
		valorLucro = custoFabrica * 0.12
		valorVenda = custoFabrica + valorImposto + valorLucro
		
		escreva("O valor de venda ao consumidor é de: "
				+ Matematica.arredondar(valorVenda, 2) + ".\n")
		escreva("O valor do imposto é de: "
				+ Matematica.arredondar(valorImposto, 2) + ".\n")
		escreva("O valor do lucro da distribuidora é de: "
				+ Matematica.arredondar(valorLucro, 2) + ".\n")
	}

	funcao escreverNumerosEmOrdemCrescente(){
		real primeiroNumero, segundoNumero
		escreva("Digite o primeiro número: ")
		leia(primeiroNumero)
		
		escreva("Digite o segundo número: ")
		leia(segundoNumero)

		se(primeiroNumero < segundoNumero)
			escreva("Os números em ordem crescente são: ("
					+ primeiroNumero + ", "
					+ segundoNumero + ").\n")
		senao
			escreva("Os números em ordem crescente são: ("
					+ segundoNumero + ", "
					+ primeiroNumero + ").\n")
	}

	funcao determinarOMaior(){
		real primeiroNumero, segundoNumero, terceiroNumero
		
		escreva("Dê 3 números e saiba qual o maior enttre eles.\n")
		escreva("")
		escreva("Digite o primeiro número: ")
		leia(primeiroNumero)
		
		escreva("Digite o segundo número: ")
		leia(segundoNumero)
		
		escreva("Digite o terceiro número: ")
		leia(terceiroNumero)

		se(primeiroNumero > segundoNumero e primeiroNumero > terceiroNumero)
			escreva("O maior número é o: " + primeiroNumero)
		senao se (segundoNumero > terceiroNumero)
			escreva("O maior número é o: " + segundoNumero)
		senao
			escreva("O maior número é o: " + terceiroNumero)
	}
































	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1437; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */