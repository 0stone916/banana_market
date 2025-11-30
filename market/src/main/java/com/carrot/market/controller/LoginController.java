package com.carrot.market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import com.carrot.market.service.LoginService;
import com.carrot.market.vo.Customer;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LoginController {

    private final LoginService loginService;        //final로 불면성 보장 NullPointerException 방지

    @GetMapping("/login")
    public String login() {
        return "login/login";  // login.jsp
    }

    @GetMapping("/enroll")
    public String enroll() {
        return "login/enrollForm";  // login.jsp
    }

    @PostMapping("enrollCustomer")
    public String insertCustomer(@RequestBody Customer customer) {
        loginService.insertCustomer(customer);
        return "가입 성공";
    }
}
