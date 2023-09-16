package kr.ac.kopo.hanabit.member.v1.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.ac.kopo.hanabit.member.v1.service.MemberService;
import kr.ac.kopo.hanabit.member.v1.vo.LoginVO;
import kr.ac.kopo.hanabit.member.v1.vo.MemberVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/members")
@SessionAttributes({"currentMember", "hanaBankApiKey"})
@Slf4j
public class MemberController {

	private final MemberService memberService;

	@Value("${hanabank.apikey}")
	private String hanaBankApiKey;

	@GetMapping("/login")
	public String loginForm() {

		return "member/login/login-form";
	}

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("loginVO") LoginVO loginVO,
		Model model, BindingResult bindingResult) {

		MemberVO memberVO = memberService.login(loginVO);

		if (memberVO == null || bindingResult.hasErrors()) {
			String loginFail = "로그인 실패. 다시 로그인 해주세요!";
			bindingResult.reject("loginFail", loginFail);
			return "member/login/login-form";
		} else {
			model.addAttribute("currentMember", memberVO);
			model.addAttribute("hanaBankApiKey", hanaBankApiKey);

			log.info(String.valueOf(model));

			return "redirect:/";
		}

	}

}
