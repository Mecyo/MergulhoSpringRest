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
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.mecyo.spring.api.dto.EntregaDTO;
import com.mecyo.spring.domain.model.Entrega;
import com.mecyo.spring.domain.service.EntregaService;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@RestController
@CrossOrigin(origins = {"http://localhost:8081", "https://curso-msr.000webhostapp.com"})
@RequestMapping("/entregas")
public class EntregaController {
	
	private EntregaService service;

	@GetMapping
	public List<EntregaDTO> listar() {
		return service.listar();
	}
	
	@GetMapping("/{entregaId}")
	public ResponseEntity<EntregaDTO> getById(@PathVariable Long entregaId) {
		return service.getById(entregaId);
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public EntregaDTO solicitar(@Valid @RequestBody Entrega entrega) {
		return service.solicitar(entrega);
	}
	
	@PutMapping("/{entregaId}")
	public ResponseEntity<EntregaDTO> update(@PathVariable Long entregaId, @Valid @RequestBody Entrega entrega) {
		return service.update(entregaId, entrega);
	}
	
	@DeleteMapping("/{entregaId}")
	public ResponseEntity<Void> delete(@PathVariable Long entregaId) {
		return service.delete(entregaId);
	}
}
