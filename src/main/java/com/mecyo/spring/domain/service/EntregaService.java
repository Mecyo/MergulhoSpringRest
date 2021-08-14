package com.mecyo.spring.domain.service;

import java.time.OffsetDateTime;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mecyo.spring.api.dto.EntregaDTO;
import com.mecyo.spring.domain.enums.StatusEntrega;
import com.mecyo.spring.domain.model.Cliente;
import com.mecyo.spring.domain.model.Entrega;
import com.mecyo.spring.domain.repository.EntregaRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class EntregaService {

	private EntregaRepository repository;
	private ClienteService clienteService;
	
	
	public List<Entrega> listar() {
		return repository.findAll();
	}
	
	public ResponseEntity<EntregaDTO> getById(Long id) {
		return repository.findById(id).map(entrega -> {
			EntregaDTO dto = new EntregaDTO(entrega);
			return ResponseEntity.ok(dto);
		}).orElse(ResponseEntity.notFound().build());
	}
	
	@Transactional
	public Entrega solicitar(Entrega entrega) {
		Long idCliente = entrega.getCliente().getId();
		Cliente cliente = clienteService.buscarPorId(idCliente);
		
		entrega.setCliente(cliente);
		entrega.setStatus(StatusEntrega.PENDENTE);
		entrega.setDataPedido(OffsetDateTime.now());
		
		return repository.save(entrega);
	}
	
	@Transactional
	public ResponseEntity<Entrega> update(Long id, Entrega entrega) {
		if(!repository.existsById(id)) {
			return ResponseEntity.notFound().build();
		}
		
		entrega.setId(id);
		entrega = solicitar(entrega);
		
		return ResponseEntity.ok(entrega);
	}

	@Transactional
	public ResponseEntity<Void> delete(Long id) {
		if(!repository.existsById(id)) {
			return ResponseEntity.notFound().build();
		}
		
		repository.deleteById(id);
		
		return ResponseEntity.noContent().build();
	}
}
