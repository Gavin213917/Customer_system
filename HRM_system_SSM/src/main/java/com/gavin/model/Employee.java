package com.gavin.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Employee implements Serializable {
    private Integer emp_id;
    private String emp_name;
    private String emp_gender;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date emp_birth;
    private Double emp_salary;
    private Integer emp_account;
    private String emp_pass;
    private Integer dep_id;
    private Integer pos_id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date emp_hireDate;
    private String emp_status;

    public Employee() {
    }

    public Employee(String emp_name, String emp_gender, Date emp_birth, Double emp_salary, Integer emp_account, String emp_pass, Integer dep_id, Integer pos_id, Date emp_hireDate, String emp_status) {
        this.emp_name = emp_name;
        this.emp_gender = emp_gender;
        this.emp_birth = emp_birth;
        this.emp_salary = emp_salary;
        this.emp_account = emp_account;
        this.emp_pass = emp_pass;
        this.dep_id = dep_id;
        this.pos_id = pos_id;
        this.emp_hireDate = emp_hireDate;
        this.emp_status = emp_status;
    }

    public Integer getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(Integer emp_id) {
        this.emp_id = emp_id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getEmp_gender() {
        return emp_gender;
    }

    public void setEmp_gender(String emp_gender) {
        this.emp_gender = emp_gender;
    }

    public Date getEmp_birth() {
        return emp_birth;
    }

    public void setEmp_birth(Date emp_birth) {
        this.emp_birth = emp_birth;
    }

    public Double getEmp_salary() {
        return emp_salary;
    }

    public void setEmp_salary(Double emp_salary) {
        this.emp_salary = emp_salary;
    }

    public Integer getEmp_account() {
        return emp_account;
    }

    public void setEmp_account(Integer emp_account) {
        this.emp_account = emp_account;
    }

    public String getEmp_pass() {
        return emp_pass;
    }

    public void setEmp_pass(String emp_pass) {
        this.emp_pass = emp_pass;
    }

    public Integer getDep_id() {
        return dep_id;
    }

    public void setDep_id(Integer dep_id) {
        this.dep_id = dep_id;
    }

    public Integer getPos_id() {
        return pos_id;
    }

    public void setPos_id(Integer pos_id) {
        this.pos_id = pos_id;
    }

    public Date getEmp_hireDate() {
        return emp_hireDate;
    }

    public void setEmp_hireDate(Date emp_hireDate) {
        this.emp_hireDate = emp_hireDate;
    }

    public String getEmp_status() {
        return emp_status;
    }

    public void setEmp_status(String emp_status) {
        this.emp_status = emp_status;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "emp_id=" + emp_id +
                ", emp_name='" + emp_name + '\'' +
                ", emp_gender='" + emp_gender + '\'' +
                ", emp_birth=" + emp_birth +
                ", emp_salary=" + emp_salary +
                ", emp_account=" + emp_account +
                ", emp_pass='" + emp_pass + '\'' +
                ", dep_id=" + dep_id +
                ", pos_id=" + pos_id +
                ", emp_hireDate=" + emp_hireDate +
                ", emp_status='" + emp_status + '\'' +
                '}';
    }
}
