package com.gavin.service;

import com.gavin.model.Employee;

import java.util.List;

public interface EmployeeService {
    boolean addEmployee(Employee employee);

    boolean deleteEmployee(Integer emp_id);

    boolean updateEmployee(Employee employee);

    Employee getEmployee(Integer emp_id);

    List<Employee> getEmployeeAll();
}
