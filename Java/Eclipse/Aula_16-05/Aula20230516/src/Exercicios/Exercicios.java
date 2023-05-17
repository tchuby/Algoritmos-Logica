package Exercicios;
import java.util.Scanner;

public class Exercicios {
	
	private static Scanner _reader = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		showPanel();
		
		_reader.close();
	}
	
	public static void exercicioUm() {
		print("Exercício 01");
		print("Digite a altura do retângulo: ");
		double altura = validateDouble(_reader.next());
		print("Digite a largura do retângulo: ");
		double largura = validateDouble(_reader.next());
		
		var perimetro = (2 * altura) + (2 * largura);
		
		print("O perímetro do retângulo é de: " + perimetro);
	}
	
	public static void exercicioDois() {
		print("Exercício 02");
		print("Digite a base do retângulo: ");
		double base = validateDouble(_reader.next());
		print("Digite a altura do retângulo: ");
		double altura = validateDouble(_reader.next());
		
		var area = base * altura;
		
		print("O valor da área do retângulo é de: " + area);
	}
	
	public static void exercicioTres() {
		print("Exercício 03");
		print("Digite 5 notas para saber a média do aluno: ");
		var montante = 0.0;
		
		for(int i = 1; i < 6; i++) {
			print("Digite a " + i + "ª nota do aluno: ");
			montante = montante + validateDouble(_reader.next());
		}
		var media = montante / 5;
		print("A média do aluno é de: " + media);
	}
	
	public static void exercicioQuatro() {
		
		double mount = 0.0;
		
		print("Exercício 04");
		print("Digite as 3 notas do aluno e saibas se foi aprovado: ");
		
		for(int i = 1; i < 4; i++) {
			print("Digite a " + i + "ª nota do aluno: ");
			mount = mount + validateDouble(_reader.next());
		}
		
		var average = mount / 3;
		
		if(average < 7)
			print("O aluno foi reprovado com a média: " + average);
		else
			print("O aluno foi aprovado com a média: " + average);
	}
	
	public static void exercicioCinco() {
		double greater = Double.MIN_VALUE;
		print("Exercício 05");
		print("Digite 3 números e saiba qual o maior: ");
		
		for(int i = 1; i < 4; i++) {
			print("Digite o " + i + "º número: ");
			var input = validateDouble(_reader.next());
			if(input > greater)
				greater = input;
		}
		
		print("O maior número informado foi o: " + greater);
	}
	
	public static void exercicioSeis() {
		double smaller = Double.MAX_VALUE;
		print("Exercício 06");
		print("Digite 3 números e saiba qual o menor: ");
		
		for(int i = 1; i < 4; i++) {
			print("Digite o " + i + "º número: ");
			var input = validateDouble(_reader.next());
			if(input > smaller)
				smaller = input;
		}
		
		print("O maior número informado foi o: " + smaller);
	}
	
	public static void exercicioSete() {
		print("Exercício 07");
		print("Qual o seu país de origem?");
		
		String pais = _reader.next();
		
		if("BRASIL".equals(pais.toUpperCase()))
				print("Bem vindo brasileiro.");
		else
			print("Hello my friend.");
		
	}
	
	public static void exercicioOito() {
		print("Exercício 08");
		print("Saiba se um número é par.");
		print("Digite um número inteiro: ");
		
		Integer numero = validateInteger(_reader.next());
		String resultado;
		
		if((numero % 2) == 0)
			resultado = "par";
		else
			resultado = "ímpar";
			
			print("O número " + numero + " é " + resultado + ".");
	}
	
	public static void showPanel() {
		boolean controlFlow = true;
		while(controlFlow) 
		{
			print("Escolha um exercício da lista: ");
			print("01");
			print("02");
			print("03");
			print("04");
			print("05");
			print("06");
			print("07");
			print("08");
			
			var chosenNumber = validateInteger(_reader.next());
			switch(chosenNumber) {
				case 1:
					exercicioUm();
					break;
					
				case 2:
					exercicioDois();
					break;
					
				case 3:
					exercicioTres();
					break;
					
				case 4:
					exercicioQuatro();
					break;
					
				case 5:
					exercicioCinco();
					break;
					
				case 6:
					exercicioSeis();
					break;
					
				case 7:
					exercicioSete();
					break;
					
				case 8:
					exercicioOito();
					break;
					
				default:
					print("Número indisponível, escolha um número da lista.\n");
			}
			
			print("Deseja testar outro exercício?");
			print("Digite 'N' para sair, ou qualquer outro caracter para continuar!");
			String keepAlive = _reader.next();
			
			if("N".equals(keepAlive.toUpperCase()))
				controlFlow = false;
		}
		print("Fim da operação.");
	}
	
	public static void print(String input) {
		System.out.println(input);
	}
	
    public static Integer validateInteger(String input){
        int outInt = 0;
        boolean controlFlow = true;

        while(controlFlow){
            try{
                outInt = Integer.parseInt(input);
                controlFlow = false;
            }
            catch(NumberFormatException exception){
                print("Caracter inválido, tente novamente.");
                print("Use apenas números inteiros");
                input = _reader.next();
            }
        }
        return outInt;
    }

    public static Double validateDouble(String input){
        double outDouble = 0.00;
        boolean controlFlow = true;

        while(controlFlow){
            var modifiedInput = input.replace(',', '.');
            try{
                outDouble = Double.parseDouble(modifiedInput);
                controlFlow = false;
            }
            catch(NumberFormatException exception){
                print("Caracter inválido, tente novamente.");
                input = _reader.next();
            }
        }
        return outDouble;
    }
}
