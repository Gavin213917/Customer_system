package com.gavin.controller;

import com.gavin.model.Position;
import com.gavin.service.PositionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PositionController {
    @Resource
    private PositionService positionService;

    @RequestMapping("/add_position")
    public String add_position(Position position, Model model) throws Exception {
        if (positionService.addPosition(position)) {
            model.addAttribute("success", "添加成功");
            return "add_position";
        }
        return "error";
    }

    @RequestMapping("/delete_position")
    public String delete_position(HttpServletRequest request, Model model) throws Exception {
        int pos_id = Integer.parseInt(request.getParameter("delete_id"));
        if (positionService.deletePosition(pos_id)) {
            model.addAttribute("success", "删除成功");
            return "show_position";
        }
        return "";
    }

    @RequestMapping("/show_position")
    public String show_position(HttpSession session) throws Exception {
        List<Position> positionList = positionService.getPositionAll();
        session.setAttribute("positionList", positionList);
        return "show_position";
    }

    @RequestMapping("/updatePosition")
    public String updatePosition(HttpServletRequest request, HttpSession session) throws Exception {
        int pos_id = Integer.parseInt(request.getParameter("update_id"));
        Position position = positionService.getPosition(pos_id);
        session.setAttribute("position", position);
        return "update_position";
    }

    @RequestMapping("/update_position")
    public String update_position(Position position, Model model) throws Exception {
        if (positionService.updatePosition(position)) {
            model.addAttribute("success", "修改成功");
            return "show_position";
        }
        return "error";
    }
}
