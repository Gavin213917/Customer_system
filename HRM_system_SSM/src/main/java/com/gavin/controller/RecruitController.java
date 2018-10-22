package com.gavin.controller;

import com.gavin.model.Recruit;
import com.gavin.service.RecruitService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class RecruitController {
    @Resource
    private RecruitService recruitService;

    @RequestMapping("/showRecruit")
    public String showRecruit(HttpSession session) throws Exception {
        List<Recruit> recruits = recruitService.getRecruitAll();
        session.setAttribute("recruits", recruits);
        return "showRecruit";
    }

    @RequestMapping("/to_resume")
    public String to_resume()throws Exception{
        return "resume";
    }
}
