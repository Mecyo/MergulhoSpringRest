package com.mecyo.spring.api.dto;

import lombok.Data;

@Data
public class RankingDTO {
	private Long id;
	private String nickname;
	private Integer posicao;
	private Integer firstWeek;
	private Integer secondWeek;
	private Integer thirdWeek;
	private Integer fourthWeek;
	public Integer totalPoints;
}
