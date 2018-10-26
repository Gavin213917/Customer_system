package com.gavin.dao;

import com.gavin.model.Employee;

import java.util.List;

public interface EmployeeDao {
    boolean addEmployee(Employee employee);

    boolean deleteEmployee(Employee employee);

    boolean updateEmployee(Employee employee);

    Employee getEmployee(Employee employee);

    List<Employee> getEmployeeByPid(Integer pos_id);

    List<Employee> getEmployeeAll();
}
