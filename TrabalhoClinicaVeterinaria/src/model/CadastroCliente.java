package model;

public class CadastroCliente extends Cadastro {
	
	private String cpf;
	private String telefone;
	private String email;
	private String endereco;
	
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
		
	@Override
	public void MensagemInformativa() {
		// TODO Auto-generated method stub
		System.out.println("Cadastro de cliente realizado com sucesso!!");
	}
}
