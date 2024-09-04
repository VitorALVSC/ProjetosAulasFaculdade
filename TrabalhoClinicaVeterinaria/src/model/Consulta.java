package model;

import java.time.LocalDate;

public abstract class Consulta {
	private LocalDate dataConsulta = LocalDate.now();
	private String horaConsulta;
	private String Motivo;
	
	public LocalDate getDataConsulta() {
		return dataConsulta;
	}
	
	public String getHoraConsulta() {
		return horaConsulta;
	}
	
	public void setHoraConsulta(String horaConsulta) {
		this.horaConsulta = horaConsulta;
	}
	
	public String getMotivo() {
		return Motivo;
	}
	
	public void setMotivo(String motivo) {
		Motivo = motivo;
	}
	
	public abstract void TipoConulta();
	
}
