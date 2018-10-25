package com.gavin.service;

import com.gavin.model.Department;

import java.util.List;

public interface DepartmentService {
    boolean addDepartment(Department department);

    boolean deleteDepartment(Integer dep_id);

    boolean updateDepartment(Department department);

    Department getDepartment(Integer dep_id);

    List<Department> getDepartmentAll();
}
