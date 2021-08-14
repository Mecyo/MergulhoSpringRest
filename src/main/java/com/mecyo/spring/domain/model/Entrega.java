package com.mecyo.spring.domain.model;

import java.math.BigDecimal;
import java.time.OffsetDateTime;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.groups.ConvertGroup;
import javax.validation.groups.Default;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import com.mecyo.spring.domain.enums.StatusEntrega;
import com.mecyo.spring.domain.validation.ValidationGroups;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
public class Entrega {

	@Id
	@EqualsAndHashCode.Include
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private BigDecimal taxa;
	
	@JsonProperty(access = Access.READ_ONLY)
	private OffsetDateTime dataPedido;
	
	@JsonProperty(access = Access.READ_ONLY)
	private OffsetDateTime dataFinalizacao;
	
	@Valid
	@NotNull
	@ConvertGroup(from = Default.class, to = ValidationGroups.ClienteId.class)
	@ManyToOne
	private Cliente cliente;
	
	@Valid
	@NotNull
	@Embedded
	private Destinatario destinatario;
	
	@Enumerated(EnumType.STRING)
	@JsonProperty(access = Access.READ_ONLY)
	private StatusEntrega status;
	
	//@OneToMany
	//private List<Ocorrencia> ocorrencias;
}
