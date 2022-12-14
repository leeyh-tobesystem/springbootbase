package com.project.base.Controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@Slf4j
public class MainController {


    @RequestMapping(value = "/")
    public String main(HttpServletRequest req, HttpServletResponse res) {
//        return "pages/index";
        return "layout";
    }

    @RequestMapping(value = "/login")
    public String login(HttpServletRequest req, HttpServletResponse res) {
        return "login/login";
    }

    @RequestMapping(value = "/lockscreen")
    public String lockscreen(HttpServletRequest req, HttpServletResponse res) {
        return "login/lockscreen";
    }
}
