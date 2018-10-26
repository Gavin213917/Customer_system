package com.gavin.controller;

import com.gavin.model.Interview;
import com.gavin.service.InterviewService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class InterviewController {
    @Resource
    private InterviewService interviewService;

    @RequestMapping("/add_interview")
    public String add_interview(Interview interview, Model model) throws Exception {
        if (interviewService.addInterview(interview)) {
            model.addAttribute("success", "发送成功");
            return "add_interview";
        }
        return "error";
    }

    @RequestMapping("/show_interview")
    public String show_interview(HttpSession session) throws Exception {
        List<Interview> interviewList = interviewService.getInterviewAll();
        session.setAttribute("interviewList", interviewList);
        return "show_interview";
    }

    @RequestMapping("/update_interview")
    public String update_interview(HttpServletRequest request, HttpSession session) throws Exception {
        List<Interview> interviewList = interviewService.getInterviewAll();
        session.setAttribute("interviewList", interviewList);
        int u_id = Integer.parseInt(request.getParameter("u_id"));
        Interview interview = interviewService.getInterview(u_id);
        if (interview.getIview_status() == 1) {
            interview.setIview_status(2);
        } else if (interview.getIview_status() == 2) {
            interview.setIview_status(3);
        }
        interviewService.updateInterview(interview);
        return "success";
    }

}
