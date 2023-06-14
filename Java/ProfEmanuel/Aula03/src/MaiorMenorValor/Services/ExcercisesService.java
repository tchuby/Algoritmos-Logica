package MaiorMenorValor.Services;

import MaiorMenorValor.Widget.GreetingBox;

import javax.swing.*;
import java.awt.*;

public class ExcercisesService {
    public void firstExercise(){

        String input , outPut;

        /*input = JOptionPane.showInputDialog("Diga a quem você quer saudar: ");
        var f = new JFrame("Diga a quem você quer saudar:");
        String[] options = {"Batatinha", "Mamãe", "Xuxa"};
        var combo = new JComboBox(options);
        f.add(combo);
        f.setLayout(null);
        f.setSize(400, 400);
        f.setVisible(true);*/
        new GreetingBox();

        var option = new String();

        switch(option){
            case "batatinha":
                outPut = "batatinha";
                break;
            case "mamãe":
                outPut = "mamãe";
                break;
            case "xuxa":
                outPut = "Xuxa";
                break;
            default:
                outPut = "mundo";
                break;
        }
        JOptionPane.showMessageDialog(null, "Alô "+ outPut + "!");
    }

    public void secondExcercise(){

    }
}
