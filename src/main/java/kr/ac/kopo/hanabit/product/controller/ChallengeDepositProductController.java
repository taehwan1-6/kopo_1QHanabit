package kr.ac.kopo.hanabit.product.controller;

import kr.ac.kopo.hanabit.product.service.ChallengeDepositProductService;
import kr.ac.kopo.hanabit.product.vo.ChallengeDepositProductVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller()
@RequestMapping("/product/challenge-deposits")
@Slf4j
public class ChallengeDepositProductController {

    private ChallengeDepositProductService productService;

    @Autowired
    public ChallengeDepositProductController(ChallengeDepositProductService productService) {
        this.productService = productService;
    }

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

        return "product/challengedeposit/challenge-deposit-add-form";
    }
}
