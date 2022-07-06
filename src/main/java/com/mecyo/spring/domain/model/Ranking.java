package com.mecyo.spring.domain.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import com.mecyo.spring.domain.validation.ValidationGroups;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@NoArgsConstructor
public class Ranking {

	@Id
	@NotNull(groups = ValidationGroups.RankingId.class)
	@EqualsAndHashCode.Include
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotNull
	private String nickname;
	
	@NotNull
	private String admin;
	
	@NotNull
	private Integer firstWeek;
	@NotNull
	private Integer secondWeek;
	@NotNull
	private Integer thirdWeek;
	@NotNull
	private Integer fourthWeek;
	public Integer totalPoints() {
		return this.firstWeek + this.secondWeek + this.thirdWeek + this.fourthWeek;
	}
}
