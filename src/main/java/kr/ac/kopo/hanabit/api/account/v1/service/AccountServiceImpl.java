package kr.ac.kopo.hanabit.api.account.v1.service;

import kr.ac.kopo.hanabit.api.account.v1.vo.AccountVO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@Service
public class AccountServiceImpl implements AccountService {

    // @Value("${hanabank.apikey}")
    // private String apiKey;

    public List<AccountVO> getAllBasic(String apiKey) {

        // http://localhost:8082/v1/accounts/basic?apikey=~~~~~
        URI uri = UriComponentsBuilder
                .fromUriString("http://localhost:8082")
                .path("/v1/accounts/basic")
                .queryParam("apikey", apiKey)
                .encode()
                .build()
                .toUri();

        RestTemplate restTemplate = new RestTemplate();
        List<AccountVO> accountVOs = restTemplate.getForObject(uri, List.class);
        // ResponseEntity<AccountVO> responseEntity = restTemplate.getForEntity(uri, AccountVO.class);

        return accountVOs;
    }

    public ResponseEntity insertOne(String apiKey, AccountVO accountVO) {

        // http://localhost:8082/v1/accounts/add?apikey=~~~~~
        URI uri = UriComponentsBuilder
                .fromUriString("http://localhost:8082")
                .path("/v1/accounts/add")
                .queryParam("apikey", apiKey)
                .encode()
                .build()
                .toUri();

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity accountVOs = restTemplate.getForEntity(uri, String.class);

        return new ResponseEntity("하나은행 API Server에 계좌가 추가되었습니다.", HttpStatus.OK);
    }
}
