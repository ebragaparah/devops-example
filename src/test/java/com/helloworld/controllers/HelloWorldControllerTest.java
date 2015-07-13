package com.helloworld.controllers;

import org.junit.Before;
import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class HelloWorldControllerTest {

    HelloWorldController controller;

    @Before
    public void setUp() {
        controller = new HelloWorldController();
    }

    @Test
    public void helloWorldViewTest() {
        ModelAndView modelAndView = controller.get();
        assertThat(modelAndView.getViewName(), is("index"));
    }

}
