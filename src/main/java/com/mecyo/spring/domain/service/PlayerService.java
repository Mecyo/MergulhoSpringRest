package com.mecyo.spring.domain.service;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mecyo.spring.domain.exception.NegocioException;
import com.mecyo.spring.domain.model.Player;
import com.mecyo.spring.domain.repository.PlayerRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class PlayerService {

	private PlayerRepository repository;
	
	
	public List<Player> listar() {
		return repository.findAll();
	}
	
	public Player buscarPorId(Long idPlayer) {
		return repository.findById(idPlayer)
				.orElseThrow(() -> new NegocioException("Player com id: '" + idPlayer + "' não localizado!"));
	}
	
	public ResponseEntity<Player> getById(Long id) {
		return repository.findById(id).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
	}
	
	@Transactional
	public Player create(Player player) {
		String email = player.getEmail();
		
		boolean emailEmUso = repository.findByEmail(email)
				.stream()
				.anyMatch(c -> !c.equals(player));
		
		if(emailEmUso) {
			throw new NegocioException("Já existe um player cadastrado com o e-mail '" + email + "'");
		}
		
		return repository.save(player);
	}
	
	public List<Player> findByNomeContaining(String partName) {
		return repository.findByNomeContaining(partName);
	}

	@Transactional
	public ResponseEntity<Player> update(Long id, Player player) {
		if(!repository.existsById(id)) {
			return ResponseEntity.notFound().build();
		}
		
		player.setId(id);
		player = create(player);
		
		return ResponseEntity.ok(player);
	}

	@Transactional
	public ResponseEntity<Void> delete(Long playerId) {
		if(!repository.existsById(playerId)) {
			return ResponseEntity.notFound().build();
		}
		
		repository.deleteById(playerId);
		
		return ResponseEntity.noContent().build();
	}
}
