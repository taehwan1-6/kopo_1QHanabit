package kr.ac.kopo.hanabit.api.account.v1.service;

import java.net.URI;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import kr.ac.kopo.hanabit.api.account.v1.vo.AccountVO;

@Service
public class AccountServiceImpl implements AccountService {

	// @Value("${hanabank.apikey}")
	// private String apiKey;

	public List<AccountVO> getAllBasic(String apiKey) {

		// http://localhost:8080/v1/accounts/basic?apikey=~~~~~
		URI uri = UriComponentsBuilder
			.fromUriString("http://localhost:8082")
			.path("/v1/accounts/basic")
			.queryParam("apikey", apiKey)
			.encode()
			.build()
			.toUri();

		RestTemplate restTemplate = new RestTemplate();
		List<AccountVO> responseEntity = restTemplate.getForObject(uri, List.class);
		// ResponseEntity<AccountVO> responseEntity = restTemplate.getForEntity(uri, AccountVO.class);

		return responseEntity;
	}
}
