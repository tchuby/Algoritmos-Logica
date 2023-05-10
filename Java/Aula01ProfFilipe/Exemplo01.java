import java.util.Scanner;

public class Exemplo01{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.print("Digite seu nome: ");
		String name = sc.nextLine();
		System.out.println("Seu nome: " + name + ".");
		System.out.println("sem sobrenome.");
	}
} 