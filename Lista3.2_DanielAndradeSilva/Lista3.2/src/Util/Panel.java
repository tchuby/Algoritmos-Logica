package Util;

import Services.Service;

public class Panel {

    public boolean controlFlow = true;
    public int item = 0;
    private Service _service;
    private ExtensionMethods _extensions;

    public Panel()
    {
        this._extensions = new ExtensionMethods();
        this._service = new Service();
    }
    
    public void show(){
        while(controlFlow){
            _extensions.clearConsole();

            showItems();

            String itemInput = _extensions._reader.next();

            item = _extensions.validateInteger(itemInput);
            acessExercise(item);

            _extensions.print("Deseja testar outro item?");
            _extensions.print("Digite 'N' para sair, ou qualquer"
                    + " outro caracter para continuar.");

            String keepAlive = _extensions._reader.next();
            if(keepAlive.toUpperCase().equals("N"))
                controlFlow = false;

            _extensions.clearConsole();
        }
        _extensions.print("Fim da operação.");
        _extensions._reader.close();
    }

    private void showItems(){
        _extensions.print("Exercícios da lista 03.2...");
            _extensions.print("1- Mostre os negativos;");
            _extensions.print("2- Dois;");
            _extensions.print("3- Salário médio do município;");
            _extensions.print("4- Tempo de crescimento;");
            _extensions.print("5- Média;");
            _extensions.print("6- Resultado dos votos;");
            _extensions.print("7- Média dos alunos;");
            _extensions.print("8- Media entre números pares;");
            _extensions.print("9- Maior e menor números;");
            _extensions.print("10- Média ponderada;");
            _extensions.print("11- Progressão aritimética;");
            _extensions.print("12- Tabuadas;");
            _extensions.print("13- Fatoriais;");
            _extensions.print("14- Média de indeterminados números.");
            _extensions.print("Escolha um número de 1 a 14 para o "
                    +"respectivo exercício.");
    }

    private void acessExercise(int item){
        switch(item){
            case 1:
                _service.exerciseOne();
                break;

            case 2:
                _service.exerciseTwo();
                break;

            case 3:
                _service.exerciseThree();
                break;

            case 4:
                _service.exerciseFour();
                break;

            case 5:
                _service.exerciseFive();
                break;

            case 6:
                _service.exerciseSix();
                break;

            case 7:
                _service.exerciseSeven();
                break;

            case 8:
                _service.exerciseEight();
                break;

            case 9:
                _service.exerciseNine();
                break;

            case 10:
                _service.exerciseTen();
                break;

            case 11:
                _service.exerciseEleven();
                break;

            case 12:
                _service.exerciseTwelve();
                break;

            case 13:
                _service.exerciseThirteen();
                break;

            case 14:
                _service.exerciseFourteen();
                break;

            default:
                _extensions.print("O número deve estar entre 1 e 14.");
        }
    }
}
