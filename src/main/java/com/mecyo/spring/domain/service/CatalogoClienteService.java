package com.mecyo.spring.domain.service;

import java.net.MalformedURLException;
import java.text.MessageFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.apache.commons.mail.EmailException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.orm.hibernate5.SpringSessionContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mecyo.spring.api.dto.ClienteDTO;
import com.mecyo.spring.api.input.UserInput;
import com.mecyo.spring.common.SendEmail;
import com.mecyo.spring.domain.exception.NegocioException;
import com.mecyo.spring.domain.model.Cliente;
import com.mecyo.spring.domain.repository.ClienteRepository;
import com.mecyo.spring.mapper.ClienteMapper;
import com.mecyo.spring.utils.CommonsMail;
import com.mecyo.spring.utils.PasswordGenerator;

@Service
public class CatalogoClienteService {
	
	@Value("${app.url.prod}")
	private String urlApp;

	@Autowired
	private ClienteRepository repository;
	
	@Autowired
	private CommonsMail commonsMail;
	
	@Autowired
	private ClienteMapper clienteMapper;
	
	
	public List<Cliente> listar() {
		return repository.findAll();
	}
	
	public Cliente buscarPorId(Long idCliente) {
		return repository.findById(idCliente)
				.orElseThrow(() -> new NegocioException("Cliente com id: '" + idCliente + "' não localizado!"));
	}
	
	public Optional<Cliente> getById(Long id) {
		return repository.findById(id);
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
		
		Cliente novo = repository.save(cliente);

		this.enviarEmailsDeSenha(Arrays.asList(novo.getId()));
		
		return novo;
	}
	
	public List<Cliente> findByNomeContaining(String partName) {
		return repository.findByNomeContaining(partName);
	}

	@Transactional
	public Cliente update(Long id, Cliente cliente) {
		cliente.setId(id);
		cliente = create(cliente);
		
		return cliente;
	}

	@Transactional
	public void delete(Long clienteId) {
		repository.deleteById(clienteId);
	}
	
	public boolean existsById(Long clienteId) {
		return repository.existsById(clienteId);
	}
	
	public void enviarEmail(Cliente cliente, String message) throws Exception {
		SendEmail sendEmail = new SendEmail(cliente, "Senha de acesso ao sistema de cadastro de torneios de Clash Royale");
		
		sendEmail.setMessage(message);
		sendEmail.setToEmail(cliente.getEmail());
		
		try {
			commonsMail.enviaEmailFormatoHtml(sendEmail);
		} catch (MalformedURLException | EmailException e) {
			throw e;
		}
	}
	
	public ResponseEntity<Void> enviarEmailsDeSenha(List<Long> ids) {
		List<Cliente> clientes = repository.findAllById(ids);
		PasswordGenerator passwordGenerator = new PasswordGenerator.PasswordGeneratorBuilder()
				.useDigits(true)
				.useLower(true)
				.useUpper(true)
				.build();
		
		clientes.forEach(c -> {
			try {
				c.setSenha(passwordGenerator.generate(8));
				
				String message = MessageFormat.format("<html>"
						+ "<head>"
						+ "<meta http-equiv=\"Content-Type\" content=\"text/html charset=UTF-8\" />"
						+ "</head>"
						+ "<body>"
						+ "<p>Olá, <font color=\"red\">{0}!</font></p>"
						+ "<br/><p>Estamos melhorando o sistema de cadastro para torneios e geramos a sua senha de acesso: <strong><font color=\"green\">{1}</font></strong></p>"
						+ "<p>Utilize o seu e-mail de cadastro, juntamente com a senha informada acima, para efetuar login e se cadastrar para os próximos torneios.</p>"
						+ "<a href=\"{2}\">Acesse aqui</a>"
						+ "</body>"
						+ "</html>", c.getNome(), c.getSenha(), this.urlApp);
				
				this.enviarEmail(c, message);
			} catch (Exception e) {
				e.printStackTrace();
			}
		});
		
		repository.saveAll(clientes);
		
		return ResponseEntity.noContent().build();
	}

	public ResponseEntity<ClienteDTO> verificarLogin(UserInput user) {
		Optional<Cliente> cliente = repository.findByEmailAndSenha(user.getEmail(), user.getSenha());
		if(!cliente.isPresent()) {
			return ResponseEntity.notFound().build();
		}
		
		//SpringSessionContext.

		return ResponseEntity.ok(clienteMapper.toDTO(cliente.get()));
	}
}
