package kr.ac.kopo.hanabit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JspHelloController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("product/deposit")
    public String depositDetails() {
        return "product/deposit";
    }

    @GetMapping("product/deposit-tos")
    public String depositTos() {
        return "product/deposit-tos";
    }

    @GetMapping("challenge/challenges")
    public String challengeList() {
        return "challenge/challenges";
    }

}
