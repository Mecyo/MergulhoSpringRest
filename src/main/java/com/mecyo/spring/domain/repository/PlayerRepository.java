package com.mecyo.spring.domain.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mecyo.spring.domain.model.Player;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Long> {

	public List<Player> findByNome(String nome);
	
	public Optional<Player> findByEmail(String email);
	
	public List<Player> findByTelefone(String telefone);
	
	public Optional<Player> findById(Long id);
	
	public List<Player> findByNomeContaining(String nome);
}
