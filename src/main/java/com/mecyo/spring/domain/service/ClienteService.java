package com.mecyo.spring.domain.service;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mecyo.spring.domain.exception.NegocioException;
import com.mecyo.spring.domain.model.Cliente;
import com.mecyo.spring.domain.repository.ClienteRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class ClienteService {

	private ClienteRepository repository;
	
	
	public List<Cliente> listar() {
		return repository.findAll();
	}
	
	public Cliente buscarPorId(Long idCliente) {
		return repository.findById(idCliente)
				.orElseThrow(() -> new NegocioException("Cliente com id: '" + idCliente + "' não localizado!"));
	}
	
	public ResponseEntity<Cliente> getById(Long id) {
		return repository.findById(id).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
	}
	
	@Transactional
	public Cliente create(Cliente cliente) {
		String email = cliente.getEmail();
		
		boolean emailEmUso = repository.findByEmail(email)
				.stream()
				.anyMatch(c -> !c.equals(cliente));
		
		if(emailEmUso) {
			throw new NegocioException("Já existe um cliente cadastrado com o e-mail '" + email + "'");
		}
		
		return repository.save(cliente);
	}
	
	public List<Cliente> findByNomeContaining(String partName) {
		return repository.findByNomeContaining(partName);
	}

	@Transactional
	public ResponseEntity<Cliente> update(Long id, Cliente cliente) {
		if(!repository.existsById(id)) {
			return ResponseEntity.notFound().build();
		}
		
		cliente.setId(id);
		cliente = create(cliente);
		
		return ResponseEntity.ok(cliente);
	}

	@Transactional
	public ResponseEntity<Void> delete(Long clienteId) {
		if(!repository.existsById(clienteId)) {
			return ResponseEntity.notFound().build();
		}
		
		repository.deleteById(clienteId);
		
		return ResponseEntity.noContent().build();
	}
}
