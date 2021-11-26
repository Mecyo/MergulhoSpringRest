package com.mecyo.spring.domain.service;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;

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
	
	public Optional<Player> getById(Long id) {
		return repository.findById(id);
	}
	
	@Transactional
	public Player create(Player player) {
		String nickname = player.getNickname();
		
		boolean nicknameEmUso = repository.findByNickname(nickname)
				.stream()
				.anyMatch(c -> !c.equals(player));
		
		if(nicknameEmUso) {
			throw new NegocioException("Já existe um player registrado com o nickname '" + nicknameEmUso + "'");
		}
		
		player.setDataRegistro(OffsetDateTime.now());
		
		return repository.save(player);
	}
	
	public List<Player> findByNicknameContaining(String partName) {
		return repository.findByNicknameContaining(partName);
	}

	@Transactional
	public Player update(Long id, Player player) {
		player.setId(id);
		player = create(player);
		
		return player;
	}
	
	public boolean existsById(Long playerId) {
		return repository.existsById(playerId);
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
