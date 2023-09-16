package kr.ac.kopo.hanabit.api.account.v1.service;

import java.util.List;

import kr.ac.kopo.hanabit.api.account.v1.vo.AccountVO;

public interface AccountService {

	/*
	하나은행 API Server 리소스 얻어오기
	 */
	// 입출금 계좌 전체 조회
	public List<AccountVO> getAllBasic(String apiKey);
}
