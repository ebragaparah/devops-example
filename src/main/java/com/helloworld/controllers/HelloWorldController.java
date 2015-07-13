package com.helloworld.controllers;

import com.helloworld.controllers.representations.GreetingRepresentation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class HelloWorldController {

    @RequestMapping(value = "/", method = GET)
    public ModelAndView get() {
        return new ModelAndView("index", "greeting", new GreetingRepresentation("Sejam bem-vindos ao mini-curso de Devops!"));
    }
}
