package com.mecyo.spring.api.input;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class PlayerInput {
	@Valid
	private Long id;
	
	@Valid
	@NotBlank
	private String nickname;
	
	@Valid
	private Integer nivel;

	@Valid
	@NotBlank
	private ClanInput clan;

	@Valid
	@NotBlank
	private ClienteInput cliente;
}
