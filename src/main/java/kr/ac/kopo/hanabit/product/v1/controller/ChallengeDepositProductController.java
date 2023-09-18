package kr.ac.kopo.hanabit.product.v1.controller;

import kr.ac.kopo.hanabit.api.account.v1.service.AccountService;
import kr.ac.kopo.hanabit.api.account.v1.vo.AccountVO;
import kr.ac.kopo.hanabit.member.v1.vo.MemberVO;
import kr.ac.kopo.hanabit.product.v1.service.ChallengeDepositProductService;
import kr.ac.kopo.hanabit.product.v1.vo.ChallengeDepositProductVO;
import kr.ac.kopo.hanabit.subscribedproduct.v1.vo.SubscribedProductVO;
import kr.ac.kopo.hanabit.util.AccountNumberGenerator;
import kr.ac.kopo.hanabit.util.ExpiryDateGenerator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/product/challenge-deposits")
@RequiredArgsConstructor
@SessionAttributes({"currentMember", "hanaBankApiKey"})
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
    public String addForm(@PathVariable("id") Long id
            , @SessionAttribute("hanaBankApiKey") String apiKey
            , Model model) {
        ChallengeDepositProductVO productVO = productService.getOneById(id);
        model.addAttribute("productVO", productVO);

        log.info(String.valueOf(productVO));

        List<AccountVO> basicAccounts = accountService.getAllBasic(apiKey);
        model.addAttribute("basicAccounts", basicAccounts);

        return "product/challengedeposit/challenge-deposit-add-form";
    }

//    @PostMapping("/{id}/add")
//    public String addForm(
//            @SessionAttribute("currentMember") MemberVO currentMemberVO
//            , @PathVariable Long id
//            , @RequestParam String linkedAccountNumber
//            , @RequestParam int subscriptionPayment
//            , @RequestParam int accountPassword
//            , @RequestParam String smsExpiryNotification) {
//
//        // Generator
//        AccountNumberGenerator accountNumberGenerator = new AccountNumberGenerator();
//        ExpiryDateGenerator expiryDateGenerator = new ExpiryDateGenerator();
//
//
//        ChallengeDepositProductVO productVO = productService.getOneById(id);
//
//        SubscribedProductVO subscribedProductVO = SubscribedProductVO.builder()
//                .accountNumber(accountNumberGenerator.generateAccountNumber())
//                .accountPassword(accountPassword)
//                .linkedAccountNumber(linkedAccountNumber)
//                .smsExpiryNotification(smsExpiryNotification)
//                // 챌린지 예금 상품 id에서 가져오는 것
//                .name(productVO.getName())
//                .type(productVO.getType())
//
//                .subscriptionPayment(subscriptionPayment)
//                .subscriptionPeriod(productVO.getPeriod())
//
//                .weeklyAuthFrequency(productVO.getWeeklyAuthFrequency())
//                .dailyAuthFrequency(productVO.getDailyAuthFrequency())
//
//                // .subscriptionDate() -> sysdate로 default
//                .expiryDate(expiryDateGenerator.getExpiryDateGenerator(productVO.getPeriod()))
//
//                // .authCount()
//
//                // FK
//                .memberUseId(currentMemberVO.getUseId())
//                .challengeDepositProductId(productVO.getId())
//
//                .build();
//
//        // 위에 subscribedProductVO를 subscribedProductMapper만들어서 insertOne해서
//        // service에는 addOne()로 하면 될듯.
//
//
//        return null;
//    }

    @PostMapping("/{id}/add")
    public String addForm(
            @SessionAttribute("currentMember") MemberVO currentMemberVO
            , @SessionAttribute("hanaBankApiKey") String apiKey
            , @ModelAttribute("subscribedProductVO") SubscribedProductVO subscribedProductVO) {

        // Generator
        AccountNumberGenerator accountNumberGenerator = new AccountNumberGenerator();
        ExpiryDateGenerator expiryDateGenerator = new ExpiryDateGenerator();

        // 상품 가입 테이블에, 자바단에서 처리할 속성값들만 add
        subscribedProductVO.builder()
                .accountNumber(accountNumberGenerator.generateAccountNumber())
//                .subscriptionDate()
                .expiryDate(expiryDateGenerator.getExpiryDateGenerator(subscribedProductVO.getSubscriptionPeriod()))
                .memberUseId(currentMemberVO.getUseId())
                .build();

        System.out.println(subscribedProductVO);

//        productService.addOne(subscribedProductVO);


        // 하나은행 API Server 계좌 테이블에 add


//        accountService.addOne(apiKey, accountVO);


        log.info("subscribedProductVO={}", subscribedProductVO.toString());

//        ChallengeDepositProductVO productVO = productService.getOneById(id);


        return null;
    }
}
