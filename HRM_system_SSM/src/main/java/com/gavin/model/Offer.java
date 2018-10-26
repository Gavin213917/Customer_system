package com.gavin.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Offer implements Serializable {
    private Integer offer_id;
    private String offer_name;
    private Double offer_salary;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date offer_time;
    private String offer_address;
    private Integer u_id;
    private Integer offer_account;
    private String offer_pass;

    public Offer() {
    }

    public Integer getOffer_id() {
        return offer_id;
    }

    public void setOffer_id(Integer offer_id) {
        this.offer_id = offer_id;
    }

    public String getOffer_name() {
        return offer_name;
    }

    public void setOffer_name(String offer_name) {
        this.offer_name = offer_name;
    }

    public Double getOffer_salary() {
        return offer_salary;
    }

    public void setOffer_salary(Double offer_salary) {
        this.offer_salary = offer_salary;
    }

    public Date getOffer_time() {
        return offer_time;
    }

    public void setOffer_time(Date offer_time) {
        this.offer_time = offer_time;
    }

    public String getOffer_address() {
        return offer_address;
    }

    public void setOffer_address(String offer_address) {
        this.offer_address = offer_address;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public Integer getOffer_account() {
        return offer_account;
    }

    public void setOffer_account(Integer offer_account) {
        this.offer_account = offer_account;
    }

    public String getOffer_pass() {
        return offer_pass;
    }

    public void setOffer_pass(String offer_pass) {
        this.offer_pass = offer_pass;
    }

    @Override
    public String toString() {
        return "Offer{" +
                "offer_id=" + offer_id +
                ", offer_name='" + offer_name + '\'' +
                ", offer_salary=" + offer_salary +
                ", offer_time=" + offer_time +
                ", offer_address='" + offer_address + '\'' +
                ", u_id=" + u_id +
                ", offer_account=" + offer_account +
                ", offer_pass='" + offer_pass + '\'' +
                '}';
    }
}
