package MaiorMenorValor.Widget;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class GreetingBox {
    JFrame f;
    public GreetingBox(){
        f=new JFrame("Diga qual pessoa deseja saldar:");

        final JLabel label = new JLabel();
        label.setHorizontalAlignment(JLabel.CENTER);
        label.setSize(400,100);

        JButton b=new JButton("Ok");
        b.setBounds(200,100,75,20);

        String names[]={"Batatinha","Mamãe","Xuxa"};

        final JComboBox cb= new JComboBox(names);
        cb.setBounds(50, 100,90,20);

        f.add(cb); f.add(label); f.add(b);
        f.setLayout(null);
        f.setSize(350,350);
        f.setVisible(true);
        b.addActionListener(new ActionListener() {
            public  void actionPerformed(ActionEvent e) {
                String data = "" + cb.getItemAt(cb.getSelectedIndex());
                label.setText(data);
            }
        });
    }
}
