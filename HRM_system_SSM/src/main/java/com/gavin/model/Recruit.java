package com.gavin.model;

import java.io.Serializable;
import java.util.Date;

public class Recruit implements Serializable {
    private Integer rec_id;
    private String rec_company_name;//公司名称
    private String rec_job;//职位
    private String rec_info;//职位信息
    private String rec_contact;//联系方式
    private String rec_address;//工作地址
    private Double rec_sal;//薪资
    private Date rec_date;//发布日期

    public Recruit() {
    }

    public Integer getRec_id() {
        return rec_id;
    }

    public void setRec_id(Integer rec_id) {
        this.rec_id = rec_id;
    }

    public String getRec_company_name() {
        return rec_company_name;
    }

    public void setRec_company_name(String rec_company_name) {
        this.rec_company_name = rec_company_name;
    }

    public String getRec_job() {
        return rec_job;
    }

    public void setRec_job(String rec_job) {
        this.rec_job = rec_job;
    }

    public String getRec_info() {
        return rec_info;
    }

    public void setRec_info(String rec_info) {
        this.rec_info = rec_info;
    }

    public String getRec_contact() {
        return rec_contact;
    }

    public void setRec_contact(String rec_contact) {
        this.rec_contact = rec_contact;
    }

    public String getRec_address() {
        return rec_address;
    }

    public void setRec_address(String rec_address) {
        this.rec_address = rec_address;
    }

    public Double getRec_sal() {
        return rec_sal;
    }

    public void setRec_sal(Double rec_sal) {
        this.rec_sal = rec_sal;
    }

    public Date getRec_date() {
        return rec_date;
    }

    public void setRec_date(Date rec_date) {
        this.rec_date = rec_date;
    }

    @Override
    public String toString() {
        return "Recruit{" +
                "rec_id=" + rec_id +
                ", rec_company_name='" + rec_company_name + '\'' +
                ", rec_job='" + rec_job + '\'' +
                ", rec_info='" + rec_info + '\'' +
                ", rec_contact='" + rec_contact + '\'' +
                ", rec_address='" + rec_address + '\'' +
                ", rec_sal=" + rec_sal +
                ", rec_date=" + rec_date +
                '}';
    }
}
