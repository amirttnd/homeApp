package com.home.controller;


import com.home.domain.Session;
import com.home.service.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/session")
@Controller
public class SessionController {

    @Autowired
    SessionService sessionService;

    @RequestMapping("/list")
    ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("/session/list");
        List<Session> sessions = sessionService.findAll();
        modelAndView.addObject("sessions", sessions);
        return modelAndView;
    }

    @RequestMapping("/create")
    String create() {
        return "session/create";
    }
}
