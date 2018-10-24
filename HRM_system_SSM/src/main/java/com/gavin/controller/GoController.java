package com.gavin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoController {
    @RequestMapping("/go_login")
    public String go_login() throws Exception {
        return "login";
    }

    @RequestMapping("/go_admin_login")
    public String go_admin_login() throws Exception {
        return "admin_login";
    }

    @RequestMapping("/go_register")
    public String go_register() throws Exception {
        return "register";
    }

    @RequestMapping("/go_userInfo")
    public String user_info() throws Exception {
        return "user_info";
    }

    @RequestMapping("/go_main")
    public String main() throws Exception {
        return "main";
    }

    @RequestMapping("/go_addEmployee")
    public String go_addEmployee() throws Exception {
        return "addEmployee";
    }

    @RequestMapping("/go_add_interview")
    public String go_add_interview() throws Exception {
        return "add_interview";
    }

}
