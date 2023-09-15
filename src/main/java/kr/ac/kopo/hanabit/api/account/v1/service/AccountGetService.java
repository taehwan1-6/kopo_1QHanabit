package kr.ac.kopo.hanabit.api.account.v1.service;

import java.net.URI;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import kr.ac.kopo.hanabit.api.account.v1.dto.response.AccountDtoResponse;

@Service
public class AccountGetService implements AccountService {

	@Value("${hanabank.apikey}")
	private String apiKey;

	public ResponseEntity<AccountDtoResponse> getAllBasic() {

		// http://localhost:8080/v1/accounts?apikey=~~~~~
		URI uri = UriComponentsBuilder
			.fromUriString("http://localhost:8082")
			.path("/v1/accounts")
			.queryParam("apikey", apiKey)
			.encode()
			.build()
			.toUri();

		RestTemplate restTemplate = new RestTemplate();
		// List<AccountDtoRequest> responseEntity = restTemplate.getForObject(uri, List.class);
		ResponseEntity<AccountDtoResponse> responseEntity = restTemplate.getForEntity(uri, AccountDtoResponse.class);

		return responseEntity;
	}
}
