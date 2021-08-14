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
import com.mecyo.spring.mapper.EntregaMapper;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class EntregaService {

	private EntregaRepository repository;
	private ClienteService clienteService;
	private EntregaMapper entregaMapper;

	public List<EntregaDTO> listar() {
		return entregaMapper.toCollectionDTO(repository.findAll());
	}

	public ResponseEntity<EntregaDTO> getById(Long id) {
		return repository.findById(id).map(entrega -> ResponseEntity.ok(entregaMapper.toDTO(entrega)))
				.orElse(ResponseEntity.notFound().build());
	}

	@Transactional
	public EntregaDTO solicitar(Entrega entrega) {
		Long idCliente = entrega.getCliente().getId();
		Cliente cliente = clienteService.buscarPorId(idCliente);

		entrega.setCliente(cliente);
		entrega.setStatus(StatusEntrega.PENDENTE);
		entrega.setDataPedido(OffsetDateTime.now());

		return entregaMapper.toDTO(repository.save(entrega));
	}

	@Transactional
	public ResponseEntity<EntregaDTO> update(Long id, Entrega entrega) {
		if (!repository.existsById(id)) {
			return ResponseEntity.notFound().build();
		}

		entrega.setId(id);

		return ResponseEntity.ok(solicitar(entrega));
	}

	@Transactional
	public ResponseEntity<Void> delete(Long id) {
		if (!repository.existsById(id)) {
			return ResponseEntity.notFound().build();
		}

		repository.deleteById(id);

		return ResponseEntity.noContent().build();
	}
}
