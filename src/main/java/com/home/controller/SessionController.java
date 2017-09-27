package com.home.controller;


import com.home.domain.Session;
import com.home.domain.User;
import com.home.model.SessionModel;
import com.home.service.SessionService;
import com.home.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/session")
@Controller
public class SessionController {

    @Autowired
    SessionService sessionService;

    @Autowired
    UserService userService;

    @RequestMapping("/list")
    ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView("/session/list");
        List<Session> sessions = sessionService.findAll();
        modelAndView.addObject("sessions", sessions);
        return modelAndView;
    }

    @RequestMapping("/create")
    ModelAndView create() {
        ModelAndView modelAndView = new ModelAndView("/session/create");
        List<User> users = userService.findByIsActive(true);
        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @RequestMapping("/save")
    ModelAndView save(@ModelAttribute SessionModel sessionModel) {
        ModelAndView modelAndView = new ModelAndView("redirect:/session/list");
        sessionService.save(sessionModel);
        return modelAndView;
    }

    @RequestMapping("/close")
    String close(@RequestParam("id") Long id) {
        sessionService.close(id);
        return "redirect:/session/list";
    }
}
