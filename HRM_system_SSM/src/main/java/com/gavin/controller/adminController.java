package com.gavin.controller;

import com.gavin.model.User;
import com.gavin.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class adminController {
    @Resource
    private UserService userService;

    @RequestMapping("/admin_login")
    public String login(User user, HttpSession session, Model model) throws Exception {
        User user1 = userService.login(user.getU_name(), user.getU_pass());
        if (user1 != null && user.getU_name().equals("admin")&&user.getU_pass().equals("admin")) {
            session.setAttribute("admin", user1);
            return "admin";
        } else {
            model.addAttribute("error", "用户名或密码错误");
            return "admin_login";
        }
    }
}
