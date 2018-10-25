package com.gavin.controller;

import com.gavin.model.Employee;
import com.gavin.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class EmployeeController {
    @Resource
    private EmployeeService employeeService;


    @RequestMapping("/add_employee")
    public String addEmployee(Employee employee, Model model) throws Exception {
        if (employeeService.addEmployee(employee)) {
            model.addAttribute("success", "添加成功");
            return "add_employee";
        }
        return "error";
    }

    @RequestMapping("/show_employee")
    public String show_employee(HttpSession session) throws Exception {
        List<Employee> employeeList = employeeService.getEmployeeAll();
        session.setAttribute("employeeList", employeeList);
        return "show_employee";
    }

    @RequestMapping("/delete_employee")
    public String delete_employee(HttpServletRequest request, Model model) throws Exception {
        int emp_id = Integer.parseInt(request.getParameter("update_id"));
        if (employeeService.deleteEmployee(emp_id)) {
            model.addAttribute("success", "删除成功");
            return "show_employee";
        }
        return "error";
    }

    @RequestMapping("/updateEmployee")
    public String update(HttpServletRequest request, HttpSession session) throws Exception {
        int emp_id = Integer.parseInt(request.getParameter("emp_id"));
        Employee employee = employeeService.getEmployee(emp_id);
        session.setAttribute("employee", employee);
        return "update_employee";
    }

    @RequestMapping("/update_employee")
    public String update_employee(Employee employee, Model model) throws Exception {
        if (employeeService.updateEmployee(employee)) {
            model.addAttribute("success", "更新成功");
            return "show_employee";
        }
        return "error";
    }
}
