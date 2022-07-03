package com.mecyo.spring.domain.model;

import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.groups.ConvertGroup;
import javax.validation.groups.Default;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import com.mecyo.spring.domain.validation.ValidationGroups;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
public class Player {

	@Id
	@NotNull(groups = ValidationGroups.PlayerId.class)
	@EqualsAndHashCode.Include
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private String nickname;
	
	@Valid
	@NotNull
	@OneToOne
	private Clan clan;
	
	@NotNull
	private Integer nivel;
	
	@JsonProperty(access = Access.READ_ONLY)
	private OffsetDateTime dataRegistro;
	
	private Integer idUser;
	
	@JsonProperty(access = Access.READ_ONLY)
	private OffsetDateTime dataBanimento;
	
	@Valid
	@NotNull
	@ConvertGroup(from = Default.class, to = ValidationGroups.ClienteId.class)
	@ManyToOne
	private Cliente cliente;
	
	@ManyToMany
	private List<Torneio> torneios = new ArrayList<>();
	
}
