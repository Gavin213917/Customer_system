package com.gavin.controller;

import com.gavin.model.User;
import com.gavin.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("/login")
    public String login(User user, HttpSession session, Model model) throws Exception {
        User user1 = userService.login(user.getU_name(), user.getU_pass());
        if (user1 != null) {
            session.setAttribute("u", user1);
            return "main";
        } else {
            model.addAttribute("error", "用户名或密码错误");
            return "login";
        }
    }

    @RequestMapping("/register")
    public String register(User user,Model model) throws Exception {
        if (userService.register(user)) {
            model.addAttribute("success", "注册成功！登录吧！");
            return "login";
        } else {
            model.addAttribute("fail", "注册失败！");
            return "main";
        }
    }
}
