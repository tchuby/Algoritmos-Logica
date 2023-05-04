import java.io.IOException;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Scanner;

public class Service {
    private Scanner _reader = new Scanner(System.in);

    private void print(String output){
        System.out.println(output);
    }
    public void writeFromOneToTem(){
        /*
         * Escreva um algoritmo para imprimir os números
         * de 1(inclusive) a 10(inclusive) em ordem
         * crescente.
         */
        print("Exercício 01");
        for(int i = 0; i < 10; i++){
            print("Número "+ i + ";");
        }
        print("Número 10.");
    }
    public void writeFromTemToOne(){
        /*
         * Escreva um algoritmo para imprimir os números
         * de 1 a 10 (inclusives) em ordem decrescente.
         */
        print("Exercício 02");
        for(int i = 10; i > 1; i--){
            print("Número "+ i + ";");
        }
        print("Número 1.");
    }

    public void printNumbersGreaterThen(){
        /*
         * Escreva um algoritmo para imprimir os 10 
         * primeiros números inteiros maiores que 100.
         */
        print("Exercício 03");
        for(int i = 100; i < 110; i++){
            print("Número "+ i + ";");
        }
        print("Número 110.");
    }
    public void printNaturalNumbersUntilN(){
        /*
         * Ler um valor N e imprimir todos os valores
         * inteiros entre 1 e N (inclusives). Considere
         * N será sempre maior que 0.
         * Modifique o exercício anterio para aceitar 
         * somente valores maiores que 0 para N. Caso 
         * o valor informado (para N) não seja maior que
         * 0, deverá ser lido um novo valor para N.
         */
        print("Imprimir números inteiros até N.");
        print("Digite um número inteiro: ");
        int number = validateInteger(_reader.next());
        for(int i = 1; i < number; i++){
            print("Número " + i + ";");
        }
        print("Número " + number + ".");
    }
    public void printNaturalNumbersUntilNGreaterThenZero(){
        /*
         *Modifique o exercício anterior para aceitar somente
         * valores maiores que 0 para N. Caso o valor informado
         * não seja maior que 0, deverá ser lido um novo valor
         * para N.
         */
        print("Imprimir números inteiros até N.");

        print("Digite um número inteiro: ");
        int number = validateInteger(_reader.next());
        while(number <= 0)
        {
            print("N deve ser maior que 0.");
            number = validateInteger(_reader.next());
        }

        for(int i = 1; i < number; i++){
            print("Número " + i + ";");
        }
        print("Número " + number + ".");
    }
    public void eightTimesTable(){
        /*
         * Escreva um algoritmo que calcule e imprima
         * a tabuada de 8.
         */
        print("Tabuada de oito: ");
        for(int i = 1; i < 10; i++){
            var result = 8 * 1;
            print("8 x " + i + " = " + result + ";");
        }
        print("8 x 10 = 80.");
    }
    public void timesTableOf(){
        /*
         * Ler um valor inteiro e escrever a tabuada
         * deste número. (n * 1 a 10)
         */
        int result;
        print("Tabuada de N.");
        print("Digite um número inteiro entre 1 e 10"
                + " para saber sua tabuada: ");
        var n = validateInteger(_reader.next());
        print("Tabuada de " + n + " :");
        for(int i = 1; i < 10; i++){
            result = n * i;
            print(n + " x " + i + "= " + result + ";");
        }
        result = n * 10;
        print(n + " x 10 = " + result + ".");
    }
    public void writeNegativeNumbers(){
        /*
         * Ler 10 valores e escrever quantos desses
         * valores são negativos.
         */
        int[] numbers = new int[10];
        String out = "";
        print("Escreva 10 valores e saiba quais são negativos.");
        for(int i = 0; i < 10; i++){
            print("Digite um número inteiro: ");
            numbers[i] = validateInteger(_reader.next());
        }
        for(int n : numbers){
            if(n < 0){
              out = out+ ", " + n;
            }
        }
        print("Os números negativos são: {" + out + "}");
    }
    public void writeNumbersBetween(){
        /*
         * Ler 10 valores e escrever quantos desses 
         * valores estão no intervalo entre 10 e 20
         * inclusive o 10 e o 20, e quantos estão 
         * fora do intervalo.
         */
    }
    public void average(){
        /*
         * Ler 10 valores e calcular a média aritimética
         * entre eles.
         */
    }
    public void showPanel(){
        boolean controlFlow = true;
        int chosenItem = 0;

        while(controlFlow){
            print("Exercícios da lista 03...");
            print("Escolha um número de 1 a 9 para o "
                    +"respectivo exercício.");

            String itemInput = _reader.next();

            cleanConsole();

            chosenItem = validateInteger(itemInput);

            switch(chosenItem){
                case 1:
                    print("Item 1:");
                    writeFromOneToTem();
                    break;

                case 2:
                    print("Item2:");
                    writeFromTemToOne();
                    break;

                case 3:
                    print("Item 3:");
                    printNumbersGreaterThen();
                    break;

                case 4:
                    print("Item 4:");
                    printNaturalNumbersUntilN();
                    break;

                case 5:
                    print("Item 5:");
                    printNaturalNumbersUntilNGreaterThenZero();
                    break;

                case 6:
                    print("Item 6:");
                    eightTimesTable();
                    break;

                case 7:
                    print("Item 7:");
                    timesTableOf();
                    break;

                case 8:
                    print("Item 8:");
                    writeNegativeNumbers();
                    break;

                case 9:
                    print("Item 9:");

                    break;

                case 10:
                    print("Item 10:");

                    break;

                default:
                    print("O número deve estar no intervalo " +
                            "entre 1 e 10.");
            }
            print("");
            print("Deseja utilizar outro item?");
            print("Digite 'S' para sair" +
                    " ou qualquer outro caracter para continuar.");

            var keepAlive = _reader.next();

            if("S".equals(keepAlive.toUpperCase()))
                controlFlow = false;

            cleanConsole();
        }
        print("Fim da operação.");
    }

    public void cleanConsole(){
        //Funciona apenas no terminal do windows, pela IDE não consegui o comportamento esperado.
        try{
            //Limpa a tela no windows, no linux e no MacOS
            if (System.getProperty("os.name").contains("Windows"))
                new ProcessBuilder("cmd", "/c", "cls")
                        .inheritIO().start().waitFor();
            else
                Runtime.getRuntime().exec("clear");
        }
        catch(IOException ioException){
            print("");
        }
        catch(InterruptedException interrupted){
            print("");
        }
    }

    public Integer validateInteger(String input){
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

    public Double validateDouble(String input){
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

    public String formatDouble(Double number){
        String numberFormated = new DecimalFormat("#,##0.00")
                .format(number).toString();
        return numberFormated;
    }

    public LocalDate readDate(){
        LocalDate dateParsed = LocalDate.now();
        DateTimeFormatter datePattern = DateTimeFormatter
                .ofPattern("dd/MM/yyyy");
        boolean controlFlow= true;

        while(controlFlow){
            try{
                dateParsed = LocalDate.parse(_reader.next(), datePattern);
                controlFlow = false;
            }
            catch(DateTimeParseException e){
                print("Data inválida, escreva a data seguindo o " +
                        "exemplo: 01/01/1900");
            }
        }

        return dateParsed;
    }
}