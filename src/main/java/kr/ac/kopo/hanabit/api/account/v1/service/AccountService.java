package kr.ac.kopo.hanabit.api.account.v1.service;

import org.springframework.http.ResponseEntity;

import kr.ac.kopo.hanabit.api.account.v1.dto.response.AccountDtoResponse;

public interface AccountService {

	/*
	하나은행 API Server 리소스 얻어오기
	 */
	// 입출금 계좌 전체 조회
	public ResponseEntity<AccountDtoResponse> getAllBasic();
}
