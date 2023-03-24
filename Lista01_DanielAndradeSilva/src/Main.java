import java.text.DecimalFormat;
import java.util.Scanner;
import java.io.PrintStream;
import static java.nio.charset.StandardCharsets.UTF_16;
import java.io.IOException;

public class Main {

    public static Scanner _reader = new Scanner(System.in);
    public static void main(String[] args) {

        printLn("Iniciando exercícios da lista 01.");
        boolean control = true;
        while(control){

            showPanel();

            String itemInput = _reader.next();

            cleanConsole();

            int item = validateInterger(itemInput);

            switch(item){
                case 1:
                    printLn("Item 1:");
                    antecessor();
                    break;

                case 2:
                    printLn("Item2:");
                    rectangleDimensions();
                    break;

                case 3:
                    printLn("Item 3:");
                    ageInDays();
                    break;

                case 4:
                    printLn("Item 4:");
                    votesPercents();
                    break;

                case 5:
                    printLn("Item 5:");
                    newPayment();
                    break;

                case 6:
                    printLn("Item 6:");
                    carFinalCost();
                    break;

                case 7:
                    printLn("Item 7:");
                    sellerPaycheck();
                    break;

                case 8:
                    printLn("Item 8:");
                    fahrenheitToCelcius();
                    break;

                case 9:
                    printLn("Item 9:");
                    avaregeGrade();
                    break;

                default:
                    printLn("O número deve estar no intervalo " +
                            "entre 1 e 9.");
            }
            printLn("");
            printLn("Deseja utilizar outro item?");
            printLn("Digite 'S' para sair" +
                    " ou qualquer outro caracter para continuar.");

            var keepAlive = _reader.next();

            if("S".equals(keepAlive.toUpperCase()))
                control = false;

            cleanConsole();
        }
        printLn("Fim da operação...");;
    }

    public static void antecessor(){
        //1 - Escreva um algoritmo para ler um valor (do teclado)
        //e escrever (na tela) o seu antecessor.

        int antecessor, actual;
        printLn("Saiba o antecessor de um número inteiro.");
        printLn("Digite um número:");

        actual = validateInterger(_reader.next());

        antecessor = actual - 1;

        printLn("O antecessor ao seu número é: " + antecessor);
        printLn("");
    }

    public static void rectangleDimensions(){
        //2 - Escreva um algoritmo para ler as dimensões de um retângulo
        //(base e altura), calcular e escrever a área do retângulo.
        double weight, high, area;

        printLn("Dê as dimensões do retângulo para saber sua área.");

        printLn("Digite um valor para a altura do retângulo: ");
        high = validateDouble(_reader.next());

        printLn("Digite um valor para a base do retângulo: ");
        weight = validateDouble(_reader.next());

        area = weight * high;

        printLn("A área do retângulo é: "+formatDouble(area));
        printLn("");
    }

    public static void ageInDays(){
        //3 - Faça um algoritmo que leia a idade de uma pessoa expressa em anos,
        //meses e dias e escreva a idade dessa pessoa expressa apenas em dias.
        //Considerar ano com 365 dias e mês com 30 dias.
        int years, months, days, daysOfLife, yearsInDays, monthsInDays;

        printLn("Saiba quantos dias se passaram na sua vida!");
        printLn("Descreva a sua idade em números inteiros de anos, meses e dias:");

        printLn("Digite os anos: ");
        years = validateInterger(_reader.next());

        printLn("Digite os meses: ");
        months = validateInterger(_reader.next());

        printLn("Digite os dias: ");
        days = validateInterger(_reader.next());

        yearsInDays = years * 365;
        monthsInDays = months * 30;

        daysOfLife = yearsInDays + monthsInDays + days;
        printLn("Você passou por " + daysOfLife + " dias em sua vida.");
        printLn("");
    }

    public static void votesPercents(){
        //4 - Escreva um algoritmo para ler o número total de eleitores de um
        //município, o número de votos brancos, nulos e válidos. Calcular e
        //escrever o percentual que cada um representa em relação ao total de
        //eleitores.
        double voters, whiteVotes, nullVotes, validVotes;
        double whitePercent, nullPercent, validPercent;

        printLn("Percentual de votos válidos de uma eleição municipal.");
        printLn("Digite o total de eleitores que votaram: ");
        voters = validateInterger(_reader.next());

        whiteVotes = 0;
        nullVotes = 0;

        var controlFlow = true;
        while(controlFlow){

            printLn("Digite o total de votos brancos: ");
            whiteVotes = validateDouble(_reader.next());

            printLn("Digite o total de votos nulos: ");
            nullVotes = validateDouble(_reader.next());

            if(voters < (whiteVotes + nullVotes)){
                printLn("A soma de votos brancos e nulos " +
                        "não deve superar ao número de eleitores votantes.");
                printLn("");
            }
            else{
                controlFlow = false;
            }
        }

        validVotes = voters - whiteVotes - nullVotes;

        whitePercent = (whiteVotes * 100) / voters;
        nullPercent = (nullVotes * 100) / voters;
        validPercent = (validVotes * 100) / voters;

        printLn("O percentual de votos brancos foi de: "
                + formatDouble(whitePercent) + "%.");
        printLn("O percentual de votos nulos foi de: "
                + formatDouble(nullPercent) + "%.");
        printLn("O percentual de votos válidos foi de: "
                + formatDouble(validPercent) + "%.");
        printLn("");
    }

    public static void newPayment(){
        //5 - Escreva um algoritmo para ler o salário mensal atual de um
        //funcionário e o percentual de reajuste. Calcular e escrever o valor do
        //novo salário. Como desafio calcular os descontos.
        double currentPayment, increaseRate, discountRate, newPayment;

        printLn("Digite os valores do salário atual as taxas de aumento e " +
                "descontos, para saber seu novo valor líquido.");

        printLn("Digite o valor bruto do salário atual:");
        currentPayment = validateDouble(_reader.next());

        printLn("Digite o valor da taxa de aumento:");
        increaseRate = validateDouble(_reader.next());

        printLn("Digite o valor da taxa de descontos (tributos, taxas ,etc.):");
        discountRate = validateDouble(_reader.next());

        newPayment = currentPayment *
                (1 + (increaseRate/100)) *
                (1 - (discountRate/100));

        printLn("O novo valor líquido do salário será de: $" +
                formatDouble(newPayment) + ".");
        printLn("");
    }

    public static void carFinalCost(){
        //6 - O custo de um carro novo ao consumidor é a soma do custo de
        //fábrica com a porcentagem do distribuidor e dos impostos (aplicados ao
        //custo de fábrica). Supondo que o percentual do distribuidor seja de
        //28% e os impostos de 45%, escrever um algoritmo para ler o custo de
        //fábrica de um carro, calcular e escrever o custo final ao consumidor.
        double factoryCost, finalCost, taxesRate, profit;
        printLn("Saiba o custo final de um automóvel a partir do seu custo de "
                + "fábrica.");

        printLn("Digite o custo de fábrica do automóvel: ");
        factoryCost = validateDouble(_reader.next());

        profit = 0.28;

        taxesRate = 0.45;

        finalCost = factoryCost * (1 + (taxesRate) + (profit));

        printLn("O custo final ao consumidor é de: $" +
                formatDouble(finalCost) + ".");
        printLn("");
    }

    public static void sellerPaycheck(){
        //7 - Uma revendedora de carros usados paga a seus funcionários
        //vendedores um salário fixo por mês, mais uma comissão também fixa para
        //cada carro vendido e mais 5% do valor das vendas por ele efetuadas.
        //Escrever um algoritmo que leia o número de carros por ele vendidos, o
        //valor total de suas vendas, o salário fixo e o valor que ele recebe
        //por carro vendido. Calcule e escreva o salário final do vendedor.
        double paycheck, totalSales, baseSalary, comissionPerCar;
        int carsSold;
        printLn("Calcular o salário final do vendedor.");

        printLn("Digite o valor do salário fixo do vendedor: ");
        baseSalary = validateDouble(_reader.next());

        printLn("Digite o valor total das vendas realizadas pelo vendedor " +
                "no período:");
        totalSales = validateDouble(_reader.next());

        printLn("Digite a comissão fixa paga por unidade negociada.");
        comissionPerCar = validateDouble(_reader.next());

        printLn("Digite um número inteiro correspondente ao total de " +
                "carros negociados pelo vendedor no período:");
        carsSold = validateInterger(_reader.next());

        paycheck = baseSalary + (totalSales * 0.05) + (comissionPerCar * carsSold);

        printLn("O salário do vendedor será de: $" +
                formatDouble(paycheck) + ".");
        printLn("");
    }

    public static void fahrenheitToCelcius(){
        //8 - Escreva um algoritmo para ler uma temperatura em graus Fahrenheit,
        //calcular e escrever o valor correspondente em graus Celsius:
        //C/5 = (F-32)/9
        String measurementUnit;
        double inputNumber, outputNumber;
        boolean control = true;

        printLn("Converta Fahrenheit em Celsius ou Celsius em Fahrenheit.");
        printLn("Qual o valor a ser convertido?");
        inputNumber = validateDouble(_reader.next());
        printLn("Em qual unidade de medida está o valor que deseja converter?");
        printLn("Digite 'C' para Celsius ou 'F' para Fahreinheit: ");

        while(control){
            measurementUnit = _reader.next();

            if("F".equals(measurementUnit)){
                control = false;
                outputNumber = 5 * (inputNumber-32) / 9;
                printLn(formatDouble(inputNumber) +
                        "°F correspondem a " +
                        formatDouble(outputNumber) + "°C.");
            }
            else if("C".equals(measurementUnit)){
                control = false;
                outputNumber = 32 + (9 * (inputNumber / 5));
                printLn(formatDouble(inputNumber) +
                        "°C correspondem a " +
                        formatDouble(outputNumber) + "°F.");
            }
            else{
                control = true;
                printLn("Utilize apenas uma letra.");
                printLn("Digite 'C' para Celsius ou 'F' para Fahreinheit: ");
            }
        }
        printLn("");
    }

    public static void avaregeGrade(){
        //9 - Faça um algoritmo que leia três notas de um aluno, calcule e
        //escreva a média final deste aluno. Considerar que a média é ponderada
        //e que o peso das notas é 2, 3 e 5.
        double grade, exame1, exame2, exame3;
        printLn("Média final do aluno.");

        printLn("Digite a nota do primeiro exame:");
        exame1 = validateDouble(_reader.next());

        printLn("Digite a nota do segundo exame:");
        exame2 = validateDouble(_reader.next());

        printLn("Digite a nota do terceiro exame:");
        exame3 = validateDouble(_reader.next());

        grade = ((exame1 * 2) + (exame2 * 3) + (exame3 * 5)) / 10;

        printLn("A média final do aluno é de: " +
                formatDouble(grade) + ".");
        printLn("");
    }

    public static void printLn(String s){
        System.out.println(s);
    }

    public static Integer validateInterger(String input){
        int outInt = 0;
        boolean controFlow = true;

        while(controFlow){
            try{
                outInt = Integer.parseInt(input);
                controFlow = false;
            }
            catch(NumberFormatException exception){
                printLn("Caracter inválido, tente novamente.");
                printLn("Use apenas números inteiros");
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
                printLn("Caracter inválido, tente novamente.");
                input = _reader.next();
            }
        }

        return outDouble;
    }
    public static String formatDouble(Double number){
        String numberConverted = new DecimalFormat("#,##0.00").format(number).toString();
        return numberConverted;
    }
    public static void showPanel(){
        printLn("Qual item da lista deseja utilizar?");
        printLn("1 - Antecessor de um número inteiro;");
        printLn("2 - Area do retângulo;");
        printLn("3 - Idade em dias;");
        printLn("4 - Percentual de votos válidos;");
        printLn("5 - Novo pagamento;");
        printLn("6 - Valor de venda de um automóvel;");
        printLn("7 - Contracheque do vendedor;");
        printLn("8 - Conversor de temperatura;");
        printLn("9 - Média final do aluno;");
        printLn("Digite um número inteiro entre 1 e 9:");
    }

    public static void cleanConsole(){
        //Funciona apenas no terminal, pela IDE não consegui o comportamento esperado.
        try{
            //Limpa a tela no windows, no linux e no MacOS
            if (System.getProperty("os.name").contains("Windows"))
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
            else
                Runtime.getRuntime().exec("clear");
        }
        catch(IOException ioException){
            printLn("");
        }
        catch(InterruptedException interrupted){
            printLn("");
        }
    }
}