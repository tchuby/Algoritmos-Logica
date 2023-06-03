package Services;

import Util.ExtensionMethods;

import java.util.List;

public class Service{
    
    private ExtensionMethods _methods;

    public Service(){
        this._methods = new ExtensionMethods();
    }
    
    public void exerciseOne(){
        /*
         * Escrever um algorítmo que leia 5 valores para a,
         * um de cada vez, e conta quantos desses valores
         * são negativos, escrevendo essa informação.
         */
        double input;
        int negatives = 0;

        _methods.print("Exercício nº 1.");
        _methods.print("Digite 5 números inteiros "
                +"e saiba quais são negativos: ");
        for(int i = 1; i < 6; i++){
            _methods.print("Digite o " + i
                        + "º número: ");
            input = _methods.validateDouble(_methods._reader.next());
            if(input < 0)
                negatives++;
        }
        _methods.print("Foram digitados " + negatives + " números negativos.");
    }

    public void exerciseTwo(){
        _methods.print("Não há implemnetação para"
        + "o exercício nº2.");
    }

    public void exerciseThree(){
        /*
         * A prefeitura de uma cidade fez uma pesquisa entre 
         *seus habitantes, coletando dados sobre o salário 
         *e número de filhos. A prefeitura deseja saber:
         *  a) média do salário da população;
         *  b) média do número de filhos;
         *  c) maior salário;
         *  d) percentual de pessoas com salário até R$100,00.
         * O final da leitura de dados se dará com a entrada
         *de um salário negativo. (Use o comando ENQUANTO-FAÇA)
         */
        _methods.print("Exercício nº3.");
    }

    public void exerciseFour(){
        /*
         * Chico tem 1,50 metro e cresce 2 centímetros por ano,
         *enquanto Zé tem 1,10 metro e cresce 3 centímetros por
         *ano. Construa um algoritmo que calcule e imprima 
         *quantos anos serão necessários para que Zé seja maior
         *que Chico.
         */
        _methods.print("Exercício nº4.");
        double alturaChico = 1.5, alturaZe = 1.1, taxaChico = 0.02, taxaZe = 0.03;
        int anos = 0;

        while(alturaZe <= alturaChico){
            alturaZe = alturaZe + taxaZe;
            alturaChico = alturaChico + taxaChico;
            anos++;
        }
        _methods.print("O Zé levará " + anos
                + " anos para ultrapassar a altura de Chico.");
    }

    public void exerciseFive(){
        /*
         * Construir um algoritmo que calcule a média aritmética
         *de vários valores inteiros positivos, lidos 
         *externamente. O final da leitura acontecerá quando for
         *lido um valor negativo.
         */
        int input = 1, mount = 0, iterator = 0;

        _methods.print("Exercício nº5.");
        _methods.print("Digite números positivos e saiba a média:");
        while(input > 0){

            input = _methods.validateInteger(_methods._reader.next());

            if(input > 0)
            {
                mount = mount + input;

                iterator++;
            }
        }
        double average = mount / iterator;

        _methods.print("A média dos valores é: "
                    + _methods.formatDouble(average));
    }

    public void exerciseSix(){
        /*
         * Em uma eleição presidencial existem quatro candidatos.
         *Os votos são informados através de códigos. Os dados 
         *utilizados para a contagem dos votos obedecem à 
         *seguinte codificação:
         *   - 1,2,3,4 = voto para os respectivos candidatos;
         *   - 5 = voto nulo;
         *   - 6 = voto em branco;
         * Elabore um algoritmo que leia o código do candidado 
         *em um voto. Calcule e escreva:
         *   - total de votos para cada candidato;
         *   - total de votos nulos;
         *   - total de votos em branco;
         * Como finalizador do conjunto de votos, tem-se o valor 0.
         */
        int input;
        boolean control = true;
        int votosCandidatoUm = 0, votosCandidatoDois = 0,
            votosCandidatosTres = 0, votosCandidatosQuatro = 0,
            votosNulos = 0, votosBrancos = 0;

        _methods.print("Exercício nº6.");
        while(control){
            _methods.print("Entre com o código do candidato"
                    + " que receberá o voto: ");
            input = _methods.validateInteger(
                    _methods._reader.next());

            switch (input)
            {
                case 0:
                    control = false;
                    break;

                case 1:
                    votosCandidatoUm++;
                    break;

                case 2:
                    votosCandidatoDois++;
                    break;

                case 3:
                    votosCandidatosTres++;
                    break;

                case 4:
                    votosCandidatosQuatro++;
                    break;

                case 5:
                    votosNulos++;
                    break;

                case 6:
                    votosBrancos++;
                    break;

                default:
                    _methods.print("Entrar apenas números inteiros "
                            +"entre 1 e 6;\n"
                    + "Para sair entre com 0.");
            }
        }
        _methods.print("A eleição teve o seguinte resultado: ");

        _methods.print("O candidato #1 recebeu "
                + votosCandidatoUm + " votos;");

        _methods.print("O candidato #2 recebeu "
                + votosCandidatoDois + " votos;");

        _methods.print("O candidato #3 recebeu "
                + votosCandidatosTres + " votos;");

        _methods.print("O candidato #4 recebeu "
                + votosCandidatosQuatro + " votos;");

        _methods.print("Tiveram "
                + votosNulos + " votos nulos;");

        _methods.print("Tiveram "
                + votosBrancos + " votos em branco;");
    }

    public void exerciseSeven(){
        /*
         * Escreva um algoritmo que calcule a média aritmética
         *das 3 notas dos alunos de uma classe. O algoritmo
         *deverá ler, além das notas, o código do aluno e 
         *deverá ser encerrado quando o código for igual a zero.
         */
        



         _methods.print("Exercício nº7.");
    }

    public void exerciseEight(){
        /*
         * Escreva um algoritmo que calcule a média dos números 
         *digitados pelo usuário, se eles forem pares. Termine
         *a leitura se o usuário digitar zero (0).
         */

        _methods.print("Exercício nº8.");
    }

    public void exerciseNine(){
        _methods.print("Exercício nº9.");
    }

    public void exerciseTen(){
        _methods.print("Exercício nº10.");
    }

    public void exerciseEleven(){
        _methods.print("Exercício nº11.");
    }

    public void exerciseTwelve(){
        _methods.print("Exercício nº12.");
    }

    public void exerciseThirteen(){
        _methods.print("Exercício nº13.");
    }

    public void exerciseFourteen(){
        _methods.print("Exercício nº14.");
    }
}
