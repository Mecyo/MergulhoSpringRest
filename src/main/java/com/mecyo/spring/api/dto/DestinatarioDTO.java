package com.mecyo.spring.api.dto;

import com.mecyo.spring.domain.model.Destinatario;

import lombok.Data;

@Data
public class DestinatarioDTO {
	private String nome;
	private String logradouro;
	private String numero;
	private String complemento;
	private String bairro;

	
	public DestinatarioDTO(Destinatario destinatario) {
		this.nome = destinatario.getNome();
		this.logradouro = destinatario.getLogradouro();
		this.numero = destinatario.getNumero();
		this.complemento = destinatario.getComplemento();
		this.bairro = destinatario.getBairro();
	}
}
