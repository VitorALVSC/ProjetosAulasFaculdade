package model;

public class CadastroAnimal extends Cadastro {
	
	private String raca;
	private int idade;
	private float peso;
	private String cor;
	private double altura;
	private double comprimento;
	
	public String getRaca() {
		return raca;
	}
	public void setRaca(String raca) {
		this.raca = raca;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}
	public float getPeso() {
		return peso;
	}
	public void setPeso(float peso) {
		this.peso = peso;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public double getAltura() {
		return altura;
	}
	public void setAltura(double altura) {
		this.altura = altura;
	}
	public double getComprimento() {
		return comprimento;
	}
	public void setComprimento(double comprimento) {
		this.comprimento = comprimento;
	}
	@Override
	public void MensagemInformativa() {
		// TODO Auto-generated method stub
		System.out.println("Cadastro de animal realizado com sucesso!!");
	}
	
}
