package com.home.controller;

import com.home.domain.Session;
import com.home.domain.User;
import com.home.enums.Status;
import com.home.service.SessionService;
import com.home.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    UserService userService;

    @Autowired
    SessionService sessionService;

    @RequestMapping("/list")
    ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView("/product/list");
        return modelAndView;
    }

    @RequestMapping("/create")
    ModelAndView create() {
        ModelAndView modelAndView = new ModelAndView("/product/create");
        List<User> users = userService.findAll();
        List<Session> sessions = sessionService.findByStatus(Status.ACTIVE);
        modelAndView.addObject("sessions", sessions);
        modelAndView.addObject("users", users);
        return modelAndView;
    }
}
