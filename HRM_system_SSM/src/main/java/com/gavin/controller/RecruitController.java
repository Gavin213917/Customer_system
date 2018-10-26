package com.gavin.controller;

import com.gavin.model.Recruit;
import com.gavin.service.RecruitService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class RecruitController {
    @Resource
    private RecruitService recruitService;

    @RequestMapping("/add_recruit")
    public String add_recruit(Recruit recruit, Model model) throws Exception {
        if (recruitService.addRecruit(recruit)) {
            model.addAttribute("success", "添加成功");
            return "add_recruit";
        }
        return "error";
    }

    @RequestMapping("/showRecruit")
    public String showRecruit(HttpSession session) throws Exception {
        List<Recruit> recruits = recruitService.getRecruitAll();
        session.setAttribute("recruits", recruits);
        return "showRecruit";
    }

    @RequestMapping("/to_resume")
    public String to_resume() throws Exception {
        return "resume";
    }

    @RequestMapping("/show_recruit")
    public String show_recruit(HttpSession session) throws Exception {
        List<Recruit> recruitList = recruitService.getRecruitAll();
        session.setAttribute("recruitList", recruitList);
        return "show_recruit";
    }

    @RequestMapping("/delete_recruit")
    public String delete_recruit(HttpServletRequest request, Model model) throws Exception {
        int rec_id = Integer.parseInt(request.getParameter("delete_id"));
        if (recruitService.deleteRecruit(rec_id)) {
            model.addAttribute("success", "删除成功");
            return "show_recruit";
        }
        return "error";
    }

    @RequestMapping("/updateRecruit")
    public String update(HttpServletRequest request, HttpSession session) throws Exception {
        int rec_id = Integer.parseInt(request.getParameter("update_id"));
        Recruit recruit = new Recruit();
        recruit.setRec_id(rec_id);
        Recruit recruit1 = recruitService.getRecruit(recruit);
        session.setAttribute("recruit", recruit1);
        return "update_recruit";
    }

    @RequestMapping("/update_recruit")
    public String update_recruit(Recruit recruit) throws Exception {
        if (recruitService.updateRecruit(recruit)) {
            return "show_recruit";
        }
        return "error";
    }
}
