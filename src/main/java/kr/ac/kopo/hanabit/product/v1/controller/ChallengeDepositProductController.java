package kr.ac.kopo.hanabit.product.v1.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.hanabit.api.account.v1.dto.response.AccountDtoResponse;
import kr.ac.kopo.hanabit.api.account.v1.service.AccountService;
import kr.ac.kopo.hanabit.product.v1.service.ChallengeDepositProductService;
import kr.ac.kopo.hanabit.product.v1.vo.ChallengeDepositProductVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/product/challenge-deposits")
@RequiredArgsConstructor
@Slf4j
public class ChallengeDepositProductController {

	private final ChallengeDepositProductService productService;
	private final AccountService accountService;

	@GetMapping
	public String products(Model model) {
		List<ChallengeDepositProductVO> productVOList = productService.getAll();

		model.addAttribute("productVOList", productVOList);

		log.info(String.valueOf(productVOList));
		//        for (ChallengeDepositProductVO productVO : productVOList) {
		//            log.info(String.valueOf(productVO));
		//        }

		return "product/challengedeposit/challenge-deposits";
	}

	@GetMapping("/{id}")
	public String product(@PathVariable("id") Long id, Model model) {
		ChallengeDepositProductVO productVO = productService.getOneById(id);

		model.addAttribute("productVO", productVO);

		log.info(String.valueOf(productVO));

		return "product/challengedeposit/challenge-deposit-details";
	}

	@GetMapping("/{id}/tos")
	public String tos(@PathVariable("id") Long id, Model model) {
		ChallengeDepositProductVO productVO = productService.getOneById(id);

		model.addAttribute("productVO", productVO);

		log.info(String.valueOf(productVO));

		return "product/challengedeposit/challenge-deposit-tos";
	}

	@GetMapping("/{id}/add")
	public String addForm(@PathVariable("id") Long id, Model model) {
		ChallengeDepositProductVO productVO = productService.getOneById(id);

		model.addAttribute("productVO", productVO);

		log.info(String.valueOf(productVO));

		ResponseEntity<AccountDtoResponse> basicAccounts = accountService.getAllBasic();
		model.addAttribute("basicAccounts", basicAccounts);

		return "product/challengedeposit/challenge-deposit-add-form";
	}
}
