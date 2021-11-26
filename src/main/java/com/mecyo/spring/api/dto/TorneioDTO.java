package com.mecyo.spring.api.dto;

import java.time.OffsetDateTime;

import lombok.Data;

@Data
public class TorneioDTO {

	private Long id;
	private String nome;
	private OffsetDateTime dataRegistro;
}
