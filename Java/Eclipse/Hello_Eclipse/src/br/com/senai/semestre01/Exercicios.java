package br.com.senai.semestre01;

import java.util.Scanner;

public class Exercicios {
	
	private static Scanner _reader = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		exercicioUm();
		
		exercicioDois();
		
		exercicioTres();
		
		_reader.close();
	}
	
	public static void exercicioUm() {
		
		print("Exercício 01");
		print("Escreva seu nome: ");
		String name = _reader.nextLine();
		
		print("O nome do usuário é: " + name + "\n");
	}
	
	public static void exercicioDois() {
		
		print("Exercício 02");
		print("Escreva seu nome: ");
		String name = _reader.nextLine();
		
		print("Escreva sua idade: ");
		Integer age = Integer.parseInt(_reader.nextLine());
		
		print("O nome do usuário é: " + name + "; e"
			   + "\nA idade do usuário é: " + age + "\n");
	}
	
	public static void exercicioTres() {
		print("Exercício 03");
		
		print("Digite sua idade: ");
		int age = Integer.parseInt(_reader.nextLine());
		
		print("Daqui 10 anos sua idade será de " 
				+ (age+10) + " anos.\n");
	}
	
	public static void exercicioQuatro() {
		/*
		 *Leia três notas do aluno e apresente sua média 
		 */
		
		print("Exercício 04");
		print("Digite a primeina nota: ");
		double notaUm = validateDouble(_reader.next());
		
		print("Digite a segunda nota: ");
		double notaDois = validateDouble(_reader.next());
		
		print("Digite a terceira nota: ");
		double notaTres = validateDouble(_reader.next());
		
		var media = (notaUm + notaDois + notaTres) / 3;
		
		print("A média do aluno é de: " + media + ".\n");
		
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
