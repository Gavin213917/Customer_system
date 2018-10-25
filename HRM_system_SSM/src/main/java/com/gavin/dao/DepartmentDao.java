package com.gavin.dao;

import com.gavin.model.Department;

import java.util.List;

public interface DepartmentDao {
    boolean addDepartment(Department department);

    boolean deleteDepartment(Department department);

    boolean updateDepartment(Department department);

    Department getDepartment(Department department);

    List<Department> getDepartmentAll();
}
