package com.home.controller;

import com.home.domain.User;
import com.home.model.UserModel;
import com.home.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/list")
    ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView("/user/list");
        List<User> users = userService.findAll();
        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @RequestMapping("/create")
    ModelAndView create(@ModelAttribute("userModel") UserModel userModel) {
        ModelAndView modelAndView = new ModelAndView("/user/create");
        modelAndView.addObject("userModel", userModel);
        return modelAndView;
    }

    @RequestMapping("/save")
    String save(@ModelAttribute UserModel userModel) {
        userService.save(userModel);
        return "redirect:/user/list";
    }
}
