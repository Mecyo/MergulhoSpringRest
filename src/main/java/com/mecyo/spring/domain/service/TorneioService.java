package com.mecyo.spring.domain.service;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mecyo.spring.domain.exception.NegocioException;
import com.mecyo.spring.domain.model.Torneio;
import com.mecyo.spring.domain.repository.TorneioRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class TorneioService {

	private TorneioRepository repository;
	
	
	public List<Torneio> listar() {
		return repository.findAll();
	}
	
	public Torneio buscarPorId(Long idTorneio) {
		return repository.findById(idTorneio)
				.orElseThrow(() -> new NegocioException("Torneio com id: '" + idTorneio + "' não localizado!"));
	}
	
	public Optional<Torneio> getById(Long id) {
		return repository.findById(id);
	}
	
	public List<Torneio> findByNomeContaining(String partName) {
		return repository.findByNomeContaining(partName);
	}
	
	@Transactional
	public Torneio create(Torneio torneio) {
		String nome = torneio.getNome();
		
		boolean nomeEmUso = repository.findByNome(nome)
				.stream()
				.anyMatch(c -> !c.equals(torneio));
		
		if(nomeEmUso) {
			throw new NegocioException("Já existe um torneio registrado com o nome '" + nome + "'");
		}
		
		torneio.setDataRegistro(OffsetDateTime.now());
		
		return repository.save(torneio);
	}
	
	@Transactional
	public Torneio update(Long id, Torneio torneio) {
		torneio.setId(id);
		torneio = create(torneio);
		
		return torneio;
	}

	@Transactional
	public ResponseEntity<Void> delete(Long torneioId) {
		if(!repository.existsById(torneioId)) {
			return ResponseEntity.notFound().build();
		}
		
		repository.deleteById(torneioId);
		
		return ResponseEntity.noContent().build();
	}

	public boolean existsById(Long torneioId) {
		return repository.existsById(torneioId);
	}
}
