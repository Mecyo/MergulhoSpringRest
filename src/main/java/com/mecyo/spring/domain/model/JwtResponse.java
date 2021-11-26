package com.mecyo.spring.domain.model;

import java.io.Serializable;

import com.mecyo.spring.security.UsuarioSistema;

import lombok.Data;

@Data
public class JwtResponse implements Serializable {

	private static final long serialVersionUID = -8091879091924046844L;

	private String token;
	private String nome;
	private String email;

	public JwtResponse(UsuarioSistema userDetails, String token) {
		this.nome = userDetails.getNome();
		this.email = userDetails.getUsername();
		this.token = token;
	}

}