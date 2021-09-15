package com.mecyo.spring.api.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.mecyo.spring.domain.model.Player;
import com.mecyo.spring.domain.service.PlayerService;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@RestController
@CrossOrigin(origins = {"http://localhost:8081", "https://curso-msr.000webhostapp.com", "https://torneio-de-clash.000webhostapp.com"})
@RequestMapping("/players")
public class PlayerController {
	
	private PlayerService service;

	@GetMapping
	public List<Player> listar() {
		return service.listar();
	}
	
	@GetMapping("/{playerId}")
	public ResponseEntity<Player> getById(@PathVariable Long playerId) {
		return service.getById(playerId);
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Player create(@Valid @RequestBody Player player) {
		return service.create(player);
	}
	
	@PutMapping("/{playerId}")
	public ResponseEntity<Player> update(@PathVariable Long playerId, @Valid @RequestBody Player player) {
		return service.update(playerId, player);
	}
	
	@GetMapping("/filterName")
	public List<Player> findByNomeContaining(@RequestParam String partName) {
		return service.findByNomeContaining(partName);
	}
	
	@DeleteMapping("/{playerId}")
	public ResponseEntity<Void> delete(@PathVariable Long playerId) {
		return service.delete(playerId);
	}
}
