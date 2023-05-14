package Util;

import Services.Service;

public class Panel {

    public boolean controlFlow = true;
    public int item = 0;
    private Service _service = new Service();
    private ExtensionMethods _extensions = new ExtensionMethods();

    public Panel(){

    }
    
    public void show(){
        while(controlFlow){
            _extensions.clearConsole();

            showItems();

            String itemInput = _extensions._reader.next();

            _extensions.clearConsole();

            item = _extensions.validateInteger(itemInput);
        }
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
            _extensions.print("9- Maior e manor números;");
            _extensions.print("10- Média ponderada;");
            _extensions.print("11- Progressão aritimética;");
            _extensions.print("12- Tabuadas;");
            _extensions.print("13- Fatoriais;");
            _extensions.print("14- Média de indeterminados números.");
            _extensions.print("Escolha um número de 1 a 14 para o "
                    +"respectivo exercício.");
    }
}
