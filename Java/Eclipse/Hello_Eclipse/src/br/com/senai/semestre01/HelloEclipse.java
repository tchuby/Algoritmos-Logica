package br.com.senai.semestre01;

import java.util.Scanner;

public class HelloEclipse {
	
	private static Scanner _read = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		print("Olá Eclipse.");
		
		print("Digite um nome: ");
		
		String nome = _read.nextLine();
		
		System.out.close();
		
		print("O nome digitado foi: " + nome);
		
		_read.close();
	}
	
	public static void print(String input) {
		System.out.println(input);
	}
}
