package com.mecyo.spring.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.mecyo.spring.domain.model.Ranking;
import com.mecyo.spring.domain.repository.RankingRepository;

import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.core.SdkBytes;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.rekognition.RekognitionClient;
import software.amazon.awssdk.services.rekognition.model.DetectTextRequest;
import software.amazon.awssdk.services.rekognition.model.DetectTextResponse;
import software.amazon.awssdk.services.rekognition.model.Image;
import software.amazon.awssdk.services.rekognition.model.TextDetection;

@Component
public class RankingCalculator {
	public static Integer ZERO = 0;
	public static Integer TREZENTOS = 300;

	@Value("${aws.awsAccessKeyId}")
	private String awsAccessKeyId;

	@Value("${aws.awsSecretAccessKey}")
	private String awsSecretAccessKey;

	/*
	 * @Autowired private PlayerRepository playerRepository;
	 */

	@Autowired
	private RankingRepository rankingRepository;

	public List<Ranking> calculate(MultipartFile file, Integer week) {
		Region region = Region.US_EAST_1;
		RekognitionClient rekClient = RekognitionClient.builder().region(region).credentialsProvider(
				StaticCredentialsProvider.create(AwsBasicCredentials.create(awsAccessKeyId, awsSecretAccessKey)))
				.build();

		return calculateByImages(rekClient, file, week);
	}

	public List<Ranking> calculateByImages(RekognitionClient rekClient, MultipartFile sourceImage, Integer week) {
		List<Ranking> rankingList = new ArrayList<Ranking>();

		try {

			InputStream sourceStream = sourceImage.getInputStream();
			SdkBytes sourceBytes = SdkBytes.fromInputStream(sourceStream);

			// Create an Image object for the source image
			Image souImage = Image.builder().bytes(sourceBytes).build();

			DetectTextRequest textRequest = DetectTextRequest.builder().image(souImage).build();

			DetectTextResponse textResponse = rekClient.detectText(textRequest);
			List<TextDetection> textCollection = textResponse.textDetections();

			System.out.println("Detected lines and words");
			boolean guerra = false;
			boolean btnX = false;
			int position = 0;
			String name = Strings.EMPTY;
			Integer points = 0;
			for (TextDetection text : textCollection) {
				// NOME - POSICAO - VALOR || NOME - VALOR - POSICAO
				System.out.println("detectedText: " + text.detectedText());
				if (position < 9) {
					if (text.detectedText().toUpperCase().contains("gueRRa".toUpperCase())) {
						guerra = true;
						continue;
					}

					if (text.detectedText().equalsIgnoreCase("x")) {
						btnX = true;
						continue;
					}

					if (guerra && btnX && Strings.isEmpty(name)) {
						name = Utils.isInteger(text.detectedText()) ? Strings.EMPTY : text.detectedText();
						continue;
					}

					if (guerra && btnX && Strings.isNotEmpty(name) && points.equals(ZERO)
							&& text.detectedText().equals(ZERO.toString())) {
						points = Utils.isInteger(text.detectedText()) ? Integer.valueOf(text.detectedText()) : ZERO;
						continue;
					}

					if (guerra && btnX && Strings.isNotEmpty(name) && points < TREZENTOS) {
						points = Utils.isInteger(text.detectedText()) ? Integer.valueOf(text.detectedText()) : ZERO;
					}

					if (Strings.isNotEmpty(name) && points > TREZENTOS) {
						// TODO for??ar cadastro no site para poder ser premiado
						// if(repository.findByNickname(name) != null) {
						Ranking newRanking = rankingRepository.findByNickname(name);
						if (newRanking == null) {
							newRanking = new Ranking(name);
						}

						newRanking.setWeekPoints(week, points);

						rankingList.add(newRanking);
						position++;
						name = Strings.EMPTY;
						points = ZERO;
						// TODO}
					}
				}
			}
		} catch (IOException e) {
			System.out.println(e.getMessage());
		} finally {
			rekClient.close();
		}

		return rankingList;
	}
}