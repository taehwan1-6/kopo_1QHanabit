package kr.ac.kopo.hanabit.product.controller;

import kr.ac.kopo.hanabit.product.service.SavingProductService;
import kr.ac.kopo.hanabit.product.vo.SavingProductVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/product")
@Slf4j
public class SavingProductController {

    private SavingProductService savingProductService;

    @Autowired
    public SavingProductController(SavingProductService savingProductService) {
        this.savingProductService = savingProductService;
    }

    @GetMapping("saving")
    public String savingDetails() {
        return "product/saving";
    }


/*
===================== 아래 일단 대기 =========================
 */

    @GetMapping("/products")
    public String productList(Model model) {
        List<SavingProductVO> savingProductVOList = savingProductService.selectAll();

        model.addAttribute("savingProductVOList", savingProductVOList);

        for (SavingProductVO savingProductVO : savingProductVOList) {
            System.out.println(savingProductVO);
        }

        return "product/products";
    }

    @GetMapping("/product-details/{id}")
    public String productDetail(@PathVariable("id") int id, Model model) {

        log.info(String.valueOf(id));

        SavingProductVO savingProductVO = savingProductService.selectOneById(id);
        model.addAttribute("productVO", savingProductVO);

        return "product/product-details";
    }

//    @GetMapping("/product-mydata")
//    public String productMydata() {
//        return "product/product-mydata";
//    }

//    @GetMapping("/product/list")
//    @ResponseBody
//    public List<SavingProductVO> selectAll_temp() {
//        List<SavingProductVO> savingProductVOList = savingProductService.selectAll();
//
//        for (SavingProductVO savingProductVO : savingProductVOList) {
//            System.out.println(savingProductVO);
//        }
//
//        return savingProductVOList;
//    }
}
