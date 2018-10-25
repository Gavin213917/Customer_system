package com.gavin.service.impl;

import com.gavin.dao.DepartmentDao;
import com.gavin.model.Department;
import com.gavin.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {
    @Resource
    private DepartmentDao departmentDao;

    public boolean addDepartment(Department department) {
        if (department == null) {
            return false;
        }
        return departmentDao.addDepartment(department);
    }

    public boolean deleteDepartment(Integer dep_id) {
        if (dep_id <= 0) {
            return false;
        }
        Department department = new Department();
        department.setDep_id(dep_id);
        return departmentDao.deleteDepartment(department);
    }

    public boolean updateDepartment(Department department) {
        if (department == null) {
            return false;
        }
        return departmentDao.updateDepartment(department);
    }

    public Department getDepartment(Integer dep_id) {
        if (dep_id <= 0) {
            return null;
        }
        Department department = new Department();
        department.setDep_id(dep_id);
        return departmentDao.getDepartment(department);
    }

    public List<Department> getDepartmentAll() {
        List<Department> departmentList = departmentDao.getDepartmentAll();
        if (departmentList.size() != 0) {
            return departmentList;
        }
        return null;
    }
}
