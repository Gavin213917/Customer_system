package com.gavin.controller;

import com.gavin.model.Department;
import com.gavin.service.DepartmentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class DepartmentController {
    @Resource
    private DepartmentService departmentService;

    @RequestMapping("/add_department")
    public String add_department(Department department, Model model) throws Exception {
        if (departmentService.addDepartment(department)) {
            model.addAttribute("success", "添加成功");
            return "add_department";
        }
        return "error";
    }

    @RequestMapping("/show_department")
    public String show_department(HttpSession session) throws Exception {
        List<Department> departmentList = departmentService.getDepartmentAll();
        session.setAttribute("departmentList", departmentList);
        return "show_department";
    }

    @RequestMapping("/delete_department")
    public String delete_department(HttpServletRequest request) throws Exception {
        int dep_id = Integer.parseInt(request.getParameter("delete_id"));
        if (departmentService.deleteDepartment(dep_id)) {
            return "show_department";
        }
        return "error";
    }

    @RequestMapping("/updateDepartment")
    public String updateDepartment(HttpServletRequest request, HttpSession session) throws Exception {
        int dep_id = Integer.parseInt(request.getParameter("delete_id"));
        Department department = departmentService.getDepartment(dep_id);
        session.setAttribute("department", department);
        return "update_department";
    }

    @RequestMapping("/update_department")
    public String update_department(Department department, Model model, HttpServletRequest request) throws Exception {
        int dep_id = Integer.parseInt(request.getParameter("delete_id"));
        department.setDep_id(dep_id);
        if (departmentService.updateDepartment(department)) {
            model.addAttribute("success", "修改成功");
            return "show_department";
        }
        return "error";
    }
}
