package com.mecyo.spring.utils;

import java.net.MalformedURLException;

import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.commons.mail.SimpleEmail;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.mecyo.spring.common.SendEmail;

@Component
public class CommonsMail {
	
	@Value("${mail.host}")
	private String host;
	@Value("${mail.smtp.port}")
	private String smtpPort;
	@Value("${mail.smtp.user}")
	private String smtpUser;
	@Value("${mail.smtp.pass}")
	private String smtpPass;
	@Value("${mail.from-name}")
	private String fromName;
	@Value("${mail.from-email-address}")
	private String fromEmailAddress;
	
	
	/**
	 * envia email simples(somente texto)
	 * @throws EmailException
	 */
	public void enviaEmailSimples(SendEmail sendMail) throws EmailException {
		
		SimpleEmail email = new SimpleEmail();
		
		if(sendMail.getFromName() == null || sendMail.getFromName().isBlank()) {
			sendMail.setFromName(this.fromName);
		}
		
		if(sendMail.getFromEmailAddress() == null || sendMail.getFromEmailAddress().isEmpty()) {
			sendMail.setFromEmailAddress(this.fromEmailAddress);
		}
		
		email.setHostName(host); // o servidor SMTP para envio do e-mail
		email.addTo(sendMail.getToEmail(), sendMail.getToName()); //destinatário
		email.setFrom(sendMail.getFromEmailAddress(), sendMail.getFromName()); // remetente
		email.setSubject(sendMail.getSubject()); // assunto do e-mail
		email.setMsg(sendMail.getMessage()); //conteudo do e-mail
		email.setAuthentication(smtpUser, smtpPass);
		email.setSmtpPort(Integer.parseInt(smtpPort));
		email.setSSL(true);
		email.setTLS(true);
		email.send();	
	}


	/**
	 * envia email com arquivo anexo
	 * @throws EmailException
	 */
	public void enviaEmailComAnexo() throws EmailException{
		
		// cria o anexo 1.
		EmailAttachment anexo1 = new EmailAttachment();
		anexo1.setPath("teste/teste.txt"); //caminho do arquivo (RAIZ_PROJETO/teste/teste.txt)
		anexo1.setDisposition(EmailAttachment.ATTACHMENT);
		anexo1.setDescription("Exemplo de arquivo anexo");
		anexo1.setName("teste.txt");		
		
		// cria o anexo 2.
		EmailAttachment anexo2 = new EmailAttachment();
		anexo2.setPath("teste/teste2.jsp"); //caminho do arquivo (RAIZ_PROJETO/teste/teste2.jsp)
		anexo2.setDisposition(EmailAttachment.ATTACHMENT);
		anexo2.setDescription("Exemplo de arquivo anexo");
		anexo2.setName("teste2.jsp");		
		
		// configura o email
		MultiPartEmail email = new MultiPartEmail();
		email.setHostName("smtp.gmail.com"); // o servidor SMTP para envio do e-mail
		email.addTo("teste@gmail.com", "Guilherme"); //destinatário
		email.setFrom("teste@gmail.com", "Eu"); // remetente
		email.setSubject("Teste -&gt; Email com anexos"); // assunto do e-mail
		email.setMsg("Teste de Email utilizando commons-email"); //conteudo do e-mail
		email.setAuthentication("teste", "xxxxx");
		email.setSmtpPort(465);
		email.setSSL(true);
		email.setTLS(true);
		
		// adiciona arquivo(s) anexo(s)
		email.attach(anexo1);
		email.attach(anexo2);
		// envia o email
		email.send();
	}


	/**
	 * Envia email no formato HTML
	 * @throws EmailException 
	 * @throws MalformedURLException 
	 */
	public void enviaEmailFormatoHtml(SendEmail sendMail) throws EmailException, MalformedURLException {
		
		HtmlEmail email = new HtmlEmail();
		
		// adiciona uma imagem ao corpo da mensagem e retorna seu id
		/*URL url = new URL("http://www.apache.org/images/asf_logo_wide.gif");
		String cid = email.embed(url, "Apache logo");	*/
		
		if(sendMail.getFromName() == null || sendMail.getFromName().isBlank()) {
			sendMail.setFromName(this.fromName);
		}
		
		if(sendMail.getFromEmailAddress() == null || sendMail.getFromEmailAddress().isEmpty()) {
			sendMail.setFromEmailAddress(this.fromEmailAddress);
		}
		
		// configura a mensagem para o formato HTML
		email.setHtmlMsg("&lt;html&gt;Logo do Apache - <img >&lt;/html&gt;");

		// configure uma mensagem alternativa caso o servidor não suporte HTML
		email.setTextMsg("Seu servidor de e-mail não suporta mensagem HTML");
		
		email.setHostName(host); // o servidor SMTP para envio do e-mail
		email.addTo(sendMail.getToEmail(), sendMail.getToName()); //destinatário
		email.setFrom(sendMail.getFromEmailAddress(), sendMail.getFromName()); // remetente
		email.setSubject(sendMail.getSubject()); // assunto do e-mail
		email.setMsg(sendMail.getMessage()); //conteudo do e-mail
		email.setAuthentication(smtpUser, smtpPass);
		email.setSmtpPort(Integer.parseInt(smtpPort));
		email.setSSL(true);
		email.setTLS(true);
		email.send();
	}
}
