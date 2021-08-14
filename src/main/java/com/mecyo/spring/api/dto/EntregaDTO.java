package com.mecyo.spring.api.dto;

import java.math.BigDecimal;
import java.time.OffsetDateTime;

import com.mecyo.spring.domain.enums.StatusEntrega;
import com.mecyo.spring.domain.model.Entrega;

import lombok.Data;

@Data
public class EntregaDTO {
	private Long id;
	private BigDecimal taxa;
	private OffsetDateTime dataPedido;
	private OffsetDateTime dataFinalizacao;
	private String nomeCliente;
	private DestinatarioDTO destinatario;
	private StatusEntrega status;
	
	//private List<Ocorrencia> ocorrencias;
	
	public EntregaDTO(Entrega entrega) {
		this.id = entrega.getId();
		this.taxa = entrega.getTaxa();
		this.dataPedido = entrega.getDataPedido();
		this.dataFinalizacao = entrega.getDataFinalizacao();
		this.nomeCliente = entrega.getCliente().getNome();
		this.destinatario = new DestinatarioDTO(entrega.getDestinatario());
		this.status = entrega.getStatus();
	}
}
