package com.home.controller;


import com.home.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping(value = {"/", "login"})
    ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("login/login");
        return modelAndView;
    }

    @RequestMapping("/doLogin")
    String doLogin(@RequestParam String username, @RequestParam String password) {
        String viewName = loginService.isAuthorized(username, password) ? "session/list" : "/login";
        return String.format("redirect:%s", viewName);
    }

    @RequestMapping("/404Page")
    void doLogin() throws Exception {
        throw new Exception("Page Not Found Exception");
    }
}
