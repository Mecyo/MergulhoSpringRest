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

import com.mecyo.spring.domain.model.Cliente;
import com.mecyo.spring.domain.service.ClienteService;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@RestController
@CrossOrigin(origins = {"http://localhost:8081", "https://curso-msr.000webhostapp.com"})
@RequestMapping("/clientes")
public class ClienteController {
	
	private ClienteService service;

	@GetMapping
	public List<Cliente> listar() {
		return service.listar();
	}
	
	@GetMapping("/{clienteId}")
	public ResponseEntity<Cliente> getById(@PathVariable Long clienteId) {
		return service.getById(clienteId);
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Cliente create(@Valid @RequestBody Cliente cliente) {
		return service.create(cliente);
	}
	
	@PutMapping("/{clienteId}")
	public ResponseEntity<Cliente> update(@PathVariable Long clienteId, @Valid @RequestBody Cliente cliente) {
		return service.update(clienteId, cliente);
	}
	
	@GetMapping("/filterName")
	public List<Cliente> findByNomeContaining(@RequestParam String partName) {
		return service.findByNomeContaining(partName);
	}
	
	@DeleteMapping("/{clienteId}")
	public ResponseEntity<Void> delete(@PathVariable Long clienteId) {
		return service.delete(clienteId);
	}
}
