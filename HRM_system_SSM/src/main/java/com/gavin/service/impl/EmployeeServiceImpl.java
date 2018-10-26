package com.gavin.service.impl;

import com.gavin.dao.EmployeeDao;
import com.gavin.model.Employee;
import com.gavin.service.EmployeeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Resource
    private EmployeeDao employeeDao;

    public boolean addEmployee(Employee employee) {
        if (employee == null) {
            return false;
        }
        return employeeDao.addEmployee(employee);
    }

    public boolean deleteEmployee(Integer emp_id) {
        if (emp_id <= 0) {
            return false;
        }
        Employee employee = new Employee();
        employee.setEmp_id(emp_id);
        return employeeDao.deleteEmployee(employee);
    }

    public boolean updateEmployee(Employee employee) {
        if (employee == null) {
            return false;
        }
        return employeeDao.updateEmployee(employee);
    }

    public Employee getEmployee(Employee employee) {
        if (employee == null) {
            return null;
        }
        return employeeDao.getEmployee(employee);
    }

    public List<Employee> getEmployeeByPid(Integer pos_id) {
        List<Employee> employeeList = employeeDao.getEmployeeByPid(pos_id);
        if (employeeList.size() != 0) {
            return employeeList;
        }
        return null;
    }

    public List<Employee> getEmployeeAll() {
        List<Employee> employeeList = employeeDao.getEmployeeAll();
        if (employeeList.size() != 0) {
            return employeeList;
        }
        return null;
    }
}
