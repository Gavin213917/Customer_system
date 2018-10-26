package com.gavin.controller;

import com.gavin.model.Employee;
import com.gavin.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        int emp_id = Integer.parseInt(request.getParameter("delete_id"));
        if (employeeService.deleteEmployee(emp_id)) {
            model.addAttribute("success", "删除成功");
            return "show_employee";
        }
        return "error";
    }

    @RequestMapping("/updateEmployee")
    public String update(HttpServletRequest request, HttpSession session) throws Exception {
        int emp_id = Integer.parseInt(request.getParameter("update_id"));
        Employee employee = new Employee();
        employee.setEmp_id(emp_id);
        Employee employee1 = employeeService.getEmployee(employee);
        session.setAttribute("employee", employee1);
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

    @RequestMapping("/look_position")
    public @ResponseBody
    List<Employee> look_position(HttpServletRequest request) throws Exception {
        int pos_id = Integer.parseInt(request.getParameter("pos_id"));
        return employeeService.getEmployeeByPid(pos_id);
    }
}
