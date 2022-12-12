package com.project.base.Controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@Slf4j
public class MainController {

    @RequestMapping(value = "/index")
    public String index(HttpServletRequest req, HttpServletResponse res) {
        return "index";
    }

    @RequestMapping(value = "/communicate")
    public String communicate(HttpServletRequest req, HttpServletResponse res) {
        return "communicate";
    }

    @RequestMapping(value = "/serial")
    public String serial(HttpServletRequest req, HttpServletResponse res) {
        return "serial";
    }
}
