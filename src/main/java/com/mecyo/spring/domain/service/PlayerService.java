package com.mecyo.spring.domain.service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.imageio.ImageIO;
import javax.validation.Valid;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.aspose.ocr.AsposeOCR;
import com.aspose.ocr.DetectAreasMode;
import com.aspose.ocr.RecognitionResult;
import com.aspose.ocr.RecognitionSettings;
import com.mecyo.spring.api.dto.PlayerDTO;
import com.mecyo.spring.api.dto.RankingDTO;
import com.mecyo.spring.api.input.PlayerInput;
import com.mecyo.spring.domain.exception.NegocioException;
import com.mecyo.spring.domain.model.Player;
import com.mecyo.spring.domain.repository.PlayerRepository;
import com.mecyo.spring.mapper.PlayerMapper;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class PlayerService {

	private PlayerRepository repository;

	private PlayerMapper playerMapper;
	
	public List<Player> listar() {
		return repository.findAll();
	}
	
	public Page<PlayerDTO> listarBanidos(Pageable page) {
		Page<Player> result = repository.findAllBanned(page);
		return result.map(object -> playerMapper.toDTO(object));
	}
	
	public Page<PlayerDTO> listarBanidosPorNickname(String nickname, Pageable page) {
		Page<Player> result = repository.findBannedByNicknameContaining(nickname, page);
		return result.map(object -> playerMapper.toDTO(object));
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

	public ResponseEntity<Void> ban(@Valid PlayerInput playerInput) {
		Player player = repository.findByNickname(playerInput.getNickname()).isEmpty() ? null : repository.findByNickname(playerInput.getNickname()).get(0);
		
		playerInput.setBanidoPor(((UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername());
		if(player != null) {
			player.ban(playerInput);
		} else {
			player = new Player(playerInput);
		}
		
		repository.save(player);
		
		return ResponseEntity.noContent().build();
	}

	public ResponseEntity<List<RankingDTO>> calcularRanking(MultipartFile file1, MultipartFile file2, MultipartFile file3, MultipartFile file4) {
		List<RankingDTO> resultList = new ArrayList<RankingDTO>();
		AsposeOCR api = new AsposeOCR();
        try {
        	
        	RecognitionSettings settings = new RecognitionSettings();
    		settings.setDetectAreasMode(DetectAreasMode.PHOTO);

    		BufferedImage file = ImageIO.read(file1.getInputStream());
    		// get result object
    		RecognitionResult result = api.RecognizePage(file, settings);
			String resultWeek1 = api.RecognizePage(ImageIO.read(file1.getInputStream()));
        	String resultWeek2 = api.RecognizePage(ImageIO.read(file2.getInputStream()));
        	String resultWeek3 = api.RecognizePage(ImageIO.read(file3.getInputStream()));
        	String resultWeek4 = api.RecognizePage(ImageIO.read(file4.getInputStream()));
        	
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        RankingDTO dto = new RankingDTO();
        dto.setNickname("Mecyo");
        dto.setPosicao(1);
        dto.setFirstWeek(900);
        dto.setFirstWeek(600);
        dto.setFirstWeek(800);
        dto.setFirstWeek(900);
        dto.setTotalPoints(3200);
        
        resultList.add(dto);
        
		return ResponseEntity.ok(resultList);
	}
}
