package com.gavin.controller;

import com.gavin.model.Resume;
import com.gavin.model.User;
import com.gavin.service.ResumeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ResumeController {
    @Resource
    private ResumeService resumeService;

    @RequestMapping("/return_recruit")
    public String to_recruit(Resume resume, HttpSession session) throws Exception {
        User user = (User) session.getAttribute("u");
        resume.setU_id(user.getU_id());
        boolean flag = resumeService.addResume(resume);
        if (flag) {
            return "showRecruit";
        }
        return "resume";
    }

    @RequestMapping("/delete_resume")
    public String delete_resume(HttpSession session, Model model) throws Exception {
        User user = (User) session.getAttribute("u");
        if (resumeService.deleteResume(user.getU_id())) {
            model.addAttribute("success", "删除成功");
            return "user_info";
        } else {
            model.addAttribute("fail", "删除失败");
            return "user_info";
        }
    }

    @RequestMapping("/update_resume")
    public String update_resume() throws Exception {
        return "user_info";
    }

    @RequestMapping("/select_resume")
    public String select_resume(HttpSession session) throws Exception {
        User user = (User) session.getAttribute("u");
        List<Resume> resumes = resumeService.getResume(user.getU_id());
        session.setAttribute("resumes", resumes);
        return "user_info";
    }
}
