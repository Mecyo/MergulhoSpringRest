package com.mecyo.spring.api.dto;

import java.time.OffsetDateTime;

import lombok.Data;

@Data
public class PlayerDTO {

	private Long id;
	private String nickname;
	private Integer nivel;
	private OffsetDateTime dataRegistro;
	private ClanDTO clan;
	private ClienteDTO cliente;
}
