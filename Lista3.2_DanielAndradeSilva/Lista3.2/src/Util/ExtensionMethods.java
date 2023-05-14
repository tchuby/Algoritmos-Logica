package Util;

import java.io.IOException;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Scanner;

public class ExtensionMethods{
    public Scanner _reader = new Scanner(System.in);
    
    public void print(String outPut){
        System.out.println(outPut);
    }

    public void clearConsole(){
        
        try
        {
            final String os = System.getProperty("os.name");

            if (os.contains("Windows"))
            {
                Runtime.getRuntime().exec("cls");
            }
            else
            {
                Runtime.getRuntime().exec("clear");
            }
        }
        catch (final Exception e)
        {
            //  Handle any exceptions.
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