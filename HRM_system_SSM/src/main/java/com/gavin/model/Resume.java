package com.gavin.model;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;
import sun.awt.SunHints;

import java.io.Serializable;
import java.util.Date;

public class Resume implements Serializable {
    private Integer res_id;
    private String res_name;
    private Integer res_age;
    private String res_gender;
    private String res_phone;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date res_birth;
    private String res_education;
    private String res_email;
    private String res_address;
    private String res_education_background;//教育背景
    private String res_work_experience;//工作经验
    private String res_certificate;//证书
    private String res_aboutMe;//自我描述
    private String res_idCard;//身份证
    private Double res_expect_salary;//期望薪资
    private String res_job_intention;//求职意向
    private Integer u_id;

    public Resume() {
    }

    public Resume(String res_name, Integer res_age, String res_gender, String res_phone,
                  Date res_birth, String res_education, String res_email, String res_address,
                  String res_education_background, String res_work_experience, String res_certificate,
                  String res_aboutMe, String res_idCard, Double res_expect_salary, String res_job_intention) {
        this.res_name = res_name;
        this.res_age = res_age;
        this.res_gender = res_gender;
        this.res_phone = res_phone;
        this.res_birth = res_birth;
        this.res_education = res_education;
        this.res_email = res_email;
        this.res_address = res_address;
        this.res_education_background = res_education_background;
        this.res_work_experience = res_work_experience;
        this.res_certificate = res_certificate;
        this.res_aboutMe = res_aboutMe;
        this.res_idCard = res_idCard;
        this.res_expect_salary = res_expect_salary;
        this.res_job_intention = res_job_intention;
    }

    public Integer getRes_id() {
        return res_id;
    }

    public void setRes_id(Integer res_id) {
        this.res_id = res_id;
    }

    public String getRes_name() {
        return res_name;
    }

    public void setRes_name(String res_name) {
        this.res_name = res_name;
    }

    public Integer getRes_age() {
        return res_age;
    }

    public void setRes_age(Integer res_age) {
        this.res_age = res_age;
    }

    public String getRes_gender() {
        return res_gender;
    }

    public void setRes_gender(String res_gender) {
        this.res_gender = res_gender;
    }

    public String getRes_phone() {
        return res_phone;
    }

    public void setRes_phone(String res_phone) {
        this.res_phone = res_phone;
    }

    public Date getRes_birth() {
        return res_birth;
    }

    public void setRes_birth(Date res_birth) {
        this.res_birth = res_birth;
    }

    public String getRes_education() {
        return res_education;
    }

    public void setRes_education(String res_education) {
        this.res_education = res_education;
    }

    public String getRes_email() {
        return res_email;
    }

    public void setRes_email(String res_email) {
        this.res_email = res_email;
    }

    public String getRes_address() {
        return res_address;
    }

    public void setRes_address(String res_address) {
        this.res_address = res_address;
    }

    public String getRes_education_background() {
        return res_education_background;
    }

    public void setRes_education_background(String res_education_background) {
        this.res_education_background = res_education_background;
    }

    public String getRes_work_experience() {
        return res_work_experience;
    }

    public void setRes_work_experience(String res_work_experience) {
        this.res_work_experience = res_work_experience;
    }

    public String getRes_certificate() {
        return res_certificate;
    }

    public void setRes_certificate(String res_certificate) {
        this.res_certificate = res_certificate;
    }

    public String getRes_aboutMe() {
        return res_aboutMe;
    }

    public void setRes_aboutMe(String res_aboutMe) {
        this.res_aboutMe = res_aboutMe;
    }

    public String getRes_idCard() {
        return res_idCard;
    }

    public void setRes_idCard(String res_idCard) {
        this.res_idCard = res_idCard;
    }

    public Double getRes_expect_salary() {
        return res_expect_salary;
    }

    public void setRes_expect_salary(Double res_expect_salary) {
        this.res_expect_salary = res_expect_salary;
    }

    public String getRes_job_intention() {
        return res_job_intention;
    }

    public void setRes_job_intention(String res_job_intention) {
        this.res_job_intention = res_job_intention;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "res_id=" + res_id +
                ", res_name='" + res_name + '\'' +
                ", res_age=" + res_age +
                ", res_gender='" + res_gender + '\'' +
                ", res_phone='" + res_phone + '\'' +
                ", res_birth=" + res_birth +
                ", res_education='" + res_education + '\'' +
                ", res_email='" + res_email + '\'' +
                ", res_address='" + res_address + '\'' +
                ", res_education_background='" + res_education_background + '\'' +
                ", res_work_experience='" + res_work_experience + '\'' +
                ", res_certificate='" + res_certificate + '\'' +
                ", res_aboutMe='" + res_aboutMe + '\'' +
                ", res_idCard='" + res_idCard + '\'' +
                ", res_expect_salary=" + res_expect_salary +
                ", res_job_intention='" + res_job_intention + '\'' +
                ", u_id=" + u_id +
                '}';
    }
}
