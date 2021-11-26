package com.mecyo.spring.domain.repository;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mecyo.spring.domain.model.Player;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Long> {
	
	public Optional<Player> findById(Long id);
	
	public List<Player> findByNicknameContaining(String nome);

	public Collection<Player> findByNickname(String nickname);
}
