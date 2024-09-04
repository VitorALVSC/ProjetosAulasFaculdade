package main;

import java.util.Scanner;

import model.CadastroAnimal;
import model.CadastroCliente;
import model.ConsultaPeriodica;

public class ExecutaOperacoes {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
				
		Scanner scanner = new Scanner(System.in);
		
		CadastroCliente cadCli = new CadastroCliente();
		CadastroAnimal cadAni = new CadastroAnimal();
		ConsultaPeriodica consPer = new ConsultaPeriodica();
		
		System.out.println("Bem vindo a clínica! \n"
				+ "Para continuar, por gentileza informe os dados solicitados abaixo."
				+ "\n -------------------------");
		System.out.println("Informe seu nome:");
		
		System.out.println("Informe seu sobre nome:");
		
		System.out.println("Informe sua data de nascimento:");
		cadCli.MensagemInformativa();
		cadAni.MensagemInformativa();
		System.out.println(consPer.getDataConsulta());
	}

}
