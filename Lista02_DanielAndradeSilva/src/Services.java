import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Scanner;

public class Services{
    private Scanner _reader = new Scanner(System.in);

    private void print(String output){
        System.out.println(output);
    }

    private void isGreaterThanTen(){
        /*Item 01 - Ler um valor e escrever a mensagem 
        É MAIOR QUE 10, caso contrário escrever 
        NÃO É MAIOR QUE 10!*/
        String input;
        double chosenNumber;

        print("Digite um número e saiba se ele é"+
        " maior do que 10.");
        input = _reader.next();

        chosenNumber = validateDouble(input);

        if(chosenNumber < 10)
            print(chosenNumber + " é menor do que 10.");
        else if(chosenNumber > 10)
            print(chosenNumber + " é maior do que 10.");
        else 
            print(chosenNumber + "é igual a 10.");
    }

    private void isPositive(){
        /*Item 02 - Ler um valor e escrever se é positivo
        ou negativo (considere 0 positivo). 
        Aqui fiz diferente do enunciado, considerando 0
        neutro.*/
        String input;
        double chosenNumber;

        print("Saiba se um número é positivo ou" +
        " negativo.");
        print(("Digite um número: "));
        input = _reader.next();

        chosenNumber = validateDouble(input);

        if(chosenNumber < 10)
            print(chosenNumber + " é negativo.");
        else if(chosenNumber > 10)
            print(chosenNumber + " é positivo.");
        else
            print(chosenNumber + "é neutro.");
    }

    private void calculateApplePrice(){
        /*Item 03 - As maçãs custam R$1,30 cada se forem
        compradas menos de uma dúzia, e R$1,00 se forem
        compradas pelo menos 12. Escreva um programa que
        leia o número de maçãs compradas, calcule e es-
        creva o custo total da compra.*/
        double numberOfApples, totalPrice;

        print("Saiba quanto pagar pelas maçãs: ");
        print("Quantas maçãs foram compradas? ");
        numberOfApples = validateDouble(_reader.next());

        if(numberOfApples < 12){
            totalPrice = numberOfApples * 1.3;
        }
        else{
            totalPrice = numberOfApples;
        }
        print("O valor devido pelas maçãs é de: R$" +
                formatDouble(totalPrice));
    }

    private void calculateSellerPaycheck(){
        /*Item 04 - Ler o salário fixo e o valor das vendas
        efetuadas pelo vendedor de uma empresa. Sabendo-se
        que ele recebe uma comissão de 3% sobre o total das
        vendas até R$1.500,00 mais 5%  sobre o que ultra-
        passar este valor, calcular e escrever o seu salário
        total.*/
        double baseSalary, salesAmount, sellerPaycheck;

        print("Calcule o pagamento do vendedor.");
        print("Digite o salário base do vendedor: ");
            baseSalary = validateDouble(_reader.next());

        print("Digite o valor total de suas das vendas: ");
            salesAmount = validateDouble(_reader.next());

        if(salesAmount > 1500) {
            sellerPaycheck = baseSalary + (1500 * 0.03) +
                    ((salesAmount - 1500) * 0.05);
        }
        else{
            sellerPaycheck = baseSalary + (salesAmount * 0.03);
        }
        print("O salário do vendedor será de: " + formatDouble(
                sellerPaycheck));
    }

    private void isApproved(){
        /*Item 05 - Ler as notas da 1ª e 2ª avaliações de um
         aluno. Calcular a média aritmética simples e escre-
         ver uma mensagem que diga se o aluno foi aprovado
         (considerar que a nota igual ou maior que 6 o aluno
         é aprovado). Escrever também a média calculada.
         */
        double firstGrade, secondGrade, average;
        print("Saiba se o aluno foi aprovado: ");
        print("Informe a nota da primeira avaliação: ");
        firstGrade = validateDouble(_reader.next());

        print("Informe a nota da segunda avaliação: ");
        secondGrade = validateDouble(_reader.next());

        average = (firstGrade + secondGrade) / 2;
        if (average < 6.0)
            print("O aluno foi reprovado, sua média foi de: " +
                    formatDouble(average) + ".");
        else print("O aluno foi aprovado, sua média foi de: " +
                    formatDouble(average) + ".");
    }

    private void canVote(){
        /*Item 06 - Ler o ano atual e o ano de nscimento de 
        uma pessoa. Escreva uma mensagem se ela poderá votar
        ou não este ano (não é necessário considerar o mês 
        em que a pessoa nasceu).
         */
        print("Saiba se pode votar: ");
    }

    private void evaluateGreater(){
        /*Item 07 - Ler dois valores e escrever o maior
        deles.*/
        double firstNumber, secondNumber;

        print("Insira dois números e saiba qual o"+
        " maior entre eles.");
        print("Digite o primeiro número: ");
        firstNumber = validateDouble(_reader.next());

        print("Digite o segundo número: ");
        secondNumber = validateDouble((_reader.next()));

        if(firstNumber.equals(secondNumber))
            print("Os números são iguais.");
        else if (firstNumber > secondNumber)
            print(firstNumber + " é maior que "
                    + secondNumber + "!");
        else
            print(secondNumber + " é maior que "
                    + firstNumber + "!");
    }

    private void orderAscendingNumbers(){
        /*Item 08 - Ler dois valores e escrevê-los em 
         ordem crescente.
         */
        print("Ordene os números: ");
        print("Escreva os números que deseja ordenar " +
                "separando-os por somente por espaços.");
    }

    private void calculatePayment(){
        /*Item 09 - A jornada de trabalho semanal de um
         funcionário é de 40 h. O funcionário que traba-
         lhar mais de 40 horas receberá hora extra, cujo 
         cálculo é o valor da hora regular com um acrés-
         cimo de 50%. Escreva um algorítmo que leia o nú-
         mero de horas trabalhadas em um mês, o salário 
         por hora e escreva o salário total do funcioná-
         rio que deverá ser acrescido das horas extras,
         caso tenham sido trabalhadas (considere que o 
         mês possua 4 semanas exatas).
         */
        print("Calcule o salário total do" + 
        "funcionario:");
    }
    
    private void fixAlgorithm(){
        /*Item 10 - Para o enunciado a seguir foi ela-
        borado um algoritmo em Portugês Estruturado que
        contém erros, identifique os erros no alforítmo
        apresentado abaixo: Eninciado: Tendo como dados
        de entrada o nome, a altura e o sexo(M ou F) de
        uma pessoa, calcule e mostre seu peso ideal,
        utilizando as seguintes fórmulas: 
        - para sexo masculino: peso ideal = (72.7 * altura) - 58; 
        - para sexo feminino: peso ideal = (62.1 * altura) - 44.7;

            inicio
                ler nome
                ler sexo
                se sexo = M então
                    peso_ideal => (72.7 * altura) - 58
                senão
                    peso_ideal => (62.1 * altura) - 44.7
                fim_se
                escrever peso_ideal
            fim
        */
        print("Calcule o seu peso ideal: ");
    }

    public void showPanel(){
        boolean controlFlow = true;
        int chosenItem = 0;

        while(controlFlow){
            print("Iniciando exercícios da lista 02...");
            print("Qual item da lista deseja utilizar?");
            print("1 - Maior ou menor que dez;");
            print("2 - Positivo ou negativo;");
            print("3 - Custo das maçãs;");
            print("4 - Contracheque do vendedor;");
            print("5 - Aprovação do aluno;");
            print("6 - Pode votar?;");
            print("7 - Avaliar qual o maior número;");
            print("8 - Ordenar números crescentes;");
            print("9 - Calcular pagamento;");
            print("10 - Peso ideal.");
            print("Digite um número inteiro entre 1 e 10:");
            print("");
            
            String itemInput = _reader.next();
            
            cleanConsole();
    
            chosenItem = validateInteger(itemInput);
    
            switch(chosenItem){
                case 1:
                        print("Item 1:");
                        isGreaterThanTen();
                        break;
    
                    case 2:
                        print("Item2:");
                        isPositive();
                        break;
    
                    case 3:
                        print("Item 3:");
                        calculateApplePrice();
                        break;
    
                    case 4:
                        print("Item 4:");
                        calculateSellerPaycheck();
                        break;
    
                    case 5:
                        print("Item 5:");
                        isApproved();
                        break;
    
                    case 6:
                        print("Item 6:");
                        canVote();
                        break;
    
                    case 7:
                        print("Item 7:");
                        evaluateGreater();
                        break;
    
                    case 8:
                        print("Item 8:");
                        orderAscendingNumbers();
                        break;
    
                    case 9:
                        print("Item 9:");
                        calculatePayment();
                        break;
    
                    case 10:
                        print("Item 10:");
                        fixAlgorithm();
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
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
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
        String numberFormated = new DecimalFormat("#,##0.00").format(number).toString();
        return numberFormated;
    }
}